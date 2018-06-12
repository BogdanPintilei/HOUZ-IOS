//
//  ARCameraViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/10/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController {

    var searchBar = UISearchBar()
    var url = URL(string: "https://www.apple.com")
    
    let backAction = UIBarButtonItem(image: #imageLiteral(resourceName: "ICON left arrow"), style: .plain, target: self, action: #selector(goBack))
    let forwardAction = UIBarButtonItem(image: #imageLiteral(resourceName: "ICON right arrow"), style: .plain, target: self, action: #selector(goForward))


    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        LoadingView.startLoadingAnimation()
        webView.load(URLRequest(url: url!))
        customizeUI()
    }

    @IBAction func close(_ sender: Any) {
        LoadingView.stopLoadingAnimation()
        self.dismiss(animated: true, completion: nil)
    }

    private func customizeUI() {
        navigationController?.isToolbarHidden = false
        addCutomToolBarItems()
        addSearchBar()
    }

    private func addSearchBar() {
        self.addSearchBar(searchBar: searchBar, tintColor: UIColor.gray, backgroundColor: UIColor.AppColors.light_gray, placeholder: "https://")
        let textFieldInsideSearchBar = self.searchBar.value(forKey: "searchField") as! UITextField
        textFieldInsideSearchBar.leftViewMode = UITextFieldViewMode.never
        searchBar.isUserInteractionEnabled = false

    }

    private func addCutomToolBarItems() {

        var items = [UIBarButtonItem]()

        let fixedSpace = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let moreAction = UIBarButtonItem(image: #imageLiteral(resourceName: "ICON more"), style: .plain, target: self, action: #selector(more))

        fixedSpace.width = 24

        items.append(backAction)
        items.append(fixedSpace)
        items.append(forwardAction)
        items.append(flexibleSpace)
        items.append(moreAction)

        self.navigationController?.toolbar.tintColor = UIColor.lightGray
        self.toolbarItems = items
    }

    @objc private func goForward() {
        webView.goForward()
    }

    @objc private func goBack() {
        webView.goBack()
    }

    @objc private func more() {
        let shareAction = UIAlertAction(title: "Share Link", style: .default, handler: nil)
        let copyAction = UIAlertAction(title: "Copy URL", style: .default, handler: nil)
        let reportAction = UIAlertAction(title: "Report", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        let actions = [shareAction, copyAction, reportAction, cancelAction]

        showAlert(actions: actions, alertType: .actionSheet)
    }

}

extension WebViewViewController: WKNavigationDelegate {

    // MARK: WebView Delegate & DataSource methods

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        LoadingView.startLoadingAnimation()
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        LoadingView.stopLoadingAnimation()
        searchBar.text = url?.absoluteString
        backAction.tintColor = webView.canGoBack ? .black : .lightGray
        forwardAction.tintColor = webView.canGoForward ? .black : .lightGray
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        LoadingView.stopLoadingAnimation()
    }

}


