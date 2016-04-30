//
//  SobreVC.swift
//  beMEMO
//
//  Created by Samuel Dias Fernandes de Oliveira on 29/04/16.
//  Copyright © 2016 samueldfo. All rights reserved.
//

import UIKit

class SobreVC: UIViewController {

    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // MARK: - UI Setup
        
        self.navigationItem.title = "Sobre" //titulo
        self.navigationController?.navigationBar.barTintColor = (UIColor(red: 219.0/255.0, green: 200.0/255.0, blue: 168.0/255.0, alpha: 1.0)) //cor do fundo
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black // cor do texto do status bar - branco
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()] // cor do título


        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let controller1 : UIViewController = UIViewController(nibName: "SobreEmpresaVC", bundle: nil)
        controller1.title = "Empresa"
        controllerArray.append(controller1)
        let controller2 : UIViewController = UIViewController(nibName: "SobreTalitaVC", bundle: nil)
        controller2.title = "Talita Dias"
        controllerArray.append(controller2)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .UseMenuLikeSegmentedControl(true),
        
            .ScrollMenuBackgroundColor(UIColor(red: 219.0/255.0, green: 200.0/255.0, blue: 168.0/255.0, alpha: 1.0)), //cor de fundo
            .SelectionIndicatorColor(UIColor(red: 65.0/255.0, green: 117.0/255.0, blue: 5.0/255.0, alpha: 1.0)), //cor do indicador
            .MenuItemFont(UIFont(name: ".SFUIText-Regular", size: 14.0)!), //fonte
            .MenuHeight(35.0), //altura item
            .MenuItemWidth(90.0), //lagura item
            .AddBottomMenuHairline(false), //linha abaixo do indicador
            .CenterMenuItems(true), //centralizar itens
            .MenuItemSeparatorPercentageHeight(0.0), //separador
            .UnselectedMenuItemLabelColor(UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)), // cor do nao selecionado
            .SelectedMenuItemLabelColor(UIColor(red: 65.0/255.0, green: 117.0/255.0, blue: 5.0/255.0, alpha: 1.0)), //cor do selecionado
            .SelectionIndicatorHeight(2.0), //largura do indicador
            .EnableHorizontalBounce(false), //permitir bounce horizontal na figura
            .ScrollAnimationDurationOnMenuItemTap(400), //velocidade da animacao do movimento em milegundos

        
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
