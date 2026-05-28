Feature: Outbound Module TestCases

  #This TC- 563963  would need fresh order all the time
  @OutboundModuleTests @RegressionTests @Purolite @viewload 
  Scenario: TC- 563963 : Verify that wave planner can view and edit the load information and release it to the warehouse for picking
  
    Given Login As Manager Four User
    Then Click on Supply Chain Advantage
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Select warehouseId and click on select
    And Click on edit and update Staging Location,Door Location and Carrier
    And Click on save and then release the load
    Then Verify the load release
    
    
  @OutboundModuleTests @RegressionTests @CSPICK
  Scenario: TC- 563963 : Verify that wave planner can view and edit the load information and release it to the warehouse for picking
  
    Given Login As Manager Five User
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    Then Go to Trailer Management Page
    And Fill in details for check in trailer functionality
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Select Tibco load id "SIA876869901445" and find the load id
    And Click on edit and update Staging Location,Door Location and Carrier
    And Click on save and then release the load
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the picking and staging functionality
    Then Perform Loading functionality
    And Verify shipping functionality
    
    
  @OutboundModuleTests @RegressionTests @CSPICK1 @TC_845709 @TC_911771
  Scenario: TC- 845709 : OUT_E2E_13 : Verify that user is able to perform CS/PC picking. (Load is shorted)_ (SAP_Validation)
  	 		TC- 911771 : 6770_move_2_04_06_User attempts to putaway LPN that is on the receiving dock
    Given Login to Koerber with user "user10"
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    Then Go to Trailer Management Page
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Select Tibco load id "HJBT10000122228" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the cs picking and staging functionality
    And Verify user attempts to putaway LPN that is on the staging "HJBT10000122228"
    Then Perform CS Loading functionality
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    And Verify shipping functionality
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    And verify the Checkout functionality
    
     @OutboundModuleTests @RegressionTests @845677 @911783 @TC_911785 @FPPICK
    Scenario: TC- 845677 : OUT_E2E_04 : Verify that user is able to perform Full Pallet Picking. 
              TC- 911785 : 6789_loading_3_14_04_User loads picked pallet into outbound trailer based on load ID.
              TC- 911783 : Order comes into EBS system, load is created in Koerber system, wave planner releases load, load is picked by user, user stages load, user loads trailer, trailer leaves facility.
    Given Login to Koerber with user "user38"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890649" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick page
    And Verify the picking and staging functionality for Full Pallet Pick
    Then Perform Full Loading functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Verify shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
     @OutboundModuleTests @RegressionTests @TC_845684 @SHORTFPPICK
    Scenario: TC- 845684 : OUT_E2E_14 : Verify that user is able to perform Full Pallet Picking (Short shipping) 
    
    Given Login to Koerber with user "user38"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890650" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick page
    And Verify the picking and staging functionality for Full Pallet Pick
    Then Perform Full Loading functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Verify short shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    
  @OutboundModuleTests @RegressionTests @845703 @CSPICK
  Scenario: TC- 845703 : OUT_E2E_01 : verify that user is able to perform CS/PC Picking.(SAP validation)
    
    Given Login to Koerber with user "user10"
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    Then Go to Trailer Management Page
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Select Tibco load id "HJBT10000122230" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the cs Full picking and staging functionality
    Then Perform CS Loading functionality
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    And Verify CS Full shipping functionality
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    And verify the Checkout functionality
    
    @OutboundModuleTests @RegressionTests @TC_845705 @CSPICK_FPPICK
    Scenario: TC- 845705 : OUT_E2E_05 : Verify that user is able to release load for Full pallet and CS/PC pick and perform both the picking process. 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890642" and find the load id
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the single cs Full picking and staging functionality
    Then Verify the cs switch Full picking and staging functionality
    Then Perform cs and Full pick Loading functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    #And Verify shipping functionality
    #Then Click on Supply Chain Advantage
    #And Click on K-motion Advantage Dashboard
    #And verify the Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Verify shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    
    @OutboundModuleTests @RegressionTests @845708 @CSPICK
  	Scenario: TC- 845708 : OUT_E2E_12 : Verify that user is able to perform CS/PC picking (Partially picking, wrong location and wrong qty)
    
	Given Login to Koerber with user "user10"
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    Then Go to Trailer Management Page
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Select Tibco load id "HJBT10000122371" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the Negative Scenario of Partial picking and staging functionality
    Then Perform CS Loading functionality
    And Click on K-Motion Advantage Fulfillment Application
    And Navigate to view load page
    Then Click on Print button Under Delivery BOL
    And verify the Shipping Process after BOL Print
    Then Click on Supply Chain Advantage
    And Click on K-motion Advantage Dashboard
    And verify the Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Performance|Transactions"
    And verify Transaction History
    
    
    @OutboundModuleTests @RegressionTests @845704 @CSPICK
  	Scenario: TC- 845704 : OUT_E2E_02 : Verify that user is able to perform CS/PC picking for load ready for release to other Ecolab site with a specific batch number.
  	
  	Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Execute Pick Work Queue Query
    Then Select Tibco load id "HJBT10000122294" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the cs picking and staging for other ecolab site
    Then Perform CS Loading functionality
    And Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Click on Print button Under Delivery BOL
    And verify the Shipping Process for other ecolab site
    Then Click on menu and navigate to Menu "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard"
    And verify the Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Performance|Transactions"
    And verify Transaction History
    
     @OutboundModuleTests @RegressionTests @TC_845707 @CSPICK_FPPICK
    Scenario: TC- 845707 : OUT_E2E_05 : Verify that user is able to release load for Full pallet and CS/PC pick and perform both the picking process. 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
      #Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890647" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the single cs Full picking and staging functionality
    Then Verify the cs switch Full picking and staging functionality
    Then Perform cs and Full pick Loading functionality
    #Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    #And Verify shipping functionality
    #Then Click on Supply Chain Advantage
    #And Click on K-motion Advantage Dashboard
    #And verify the Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Verify shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    
    @OutboundModuleTests @RegressionTests @847332 @847331 @CSPICK
  	Scenario: TC- 847332 : NOV_Out_Fedex_01 : - Verify that user is able to check case/piece pick functionality for non haz. Outbound FedEx load.
  	Scenario: TC- 847331 : NOV_Out_Fedex_02:  - Verify that user is able to release,pick and ship out the hazardous outbound fedex label load
  	Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management Using Fedex
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Execute Pick Work Queue Query
    Then Select Tibco load id "FDEX10101222341" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the cs picking and staging for fedex order
    Then Perform CS Loading functionality
    And Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Click on Print button Under Delivery BOL
    And verify the Shipping Process for other ecolab site
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Fedex Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Performance|Transactions"
    And verify Transaction History
    
    
    @OutboundModuleTests @RegressionTests @911786 @CSPICK
  	Scenario: TC- 911786 : 6791_pallet audit_3_12_01_User audits an outbound pallet with no issues
    Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And  Execute Pick Work Queue Query
    Then Select Tibco load id "HJBT10000122318" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And verify the cs picking and staging for audits an outbound pallet
    Then Perform cs LP Audit functionality
    
      @OutboundModuleTests @RegressionTests @TC_845683 @FPPICK
    Scenario: Test Case 845683: Out_E2E_09 : Wave Planner sees DROP load (check carrier) ready for release in Koeber system.  Wave planner releases load for FULL PALLET picking. 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
    #Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890629" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick page
    And Verify the picking and staging functionality for Full Pallet Pick
    Then Perform Full Loading functionality
    And Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Click on Print button Under Delivery BOL
    And verify the Shipping Process after BOL Print
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
      @OutboundModuleTests @RegressionTests @TC_845711 @CSPICK_FPPICK
    Scenario: Test Case 845711: TX_Out_Costco_01 : 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
    #Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890635" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    Then The Costco picking and staging should complete successfully
    Then Verify the Costco CS switch Full Pallet Picking and Staging functionality
    Then The Costco full loading process should complete successfully
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Verify shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    
    @OutboundModuleTests @RegressionTests @911788 @FPPICK
  	Scenario: TC- 911788 : 7042_unpick_3_15_01_User unpicks load after trailer is no show
    Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And  Execute Pick Work Queue Query
    Then Select Tibco load id "HJBT10000122418" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick
    And Verify the picking and staging functionality for Full Pallet Pick With Two Items
    Then Perform FP Unload and Unpick functionality
    And Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Inventory|Locations"
    Then Verify the Current Inventory of Items
    
    
    @OutboundModuleTests @RegressionTests @911785 @FPPICK
  	Scenario: TC- 911785 : 6789_loading_3_14_04_User loads picked pallet into outbound trailer based on load ID
    Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And  Execute Pick Work Queue Query
    Then Select Tibco load id "HJBT10000122388" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick
    And Verify the picking and staging functionality for Full Pallet Pick With Two Items
    Then Perform FP Loading functionality
    
       @OutboundModuleTests @RegressionTests @TC_845712 @CSPICK_FPPICK
    Scenario: Test Case 845712: TX_Out_Sams_01 : 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
    #Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890616" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    Then The Costco picking and staging should complete successfully
    Then Verify the Sams CS switch Full Pallet Picking and Staging functionality
    Then Perform cs and Full pick Loading functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Verify CS Full shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    
    @OutboundModuleTests @RegressionTests @TC_911784 @FPPICK
  	Scenario: Test Case 911784: 6788_loading_3_14_03_User loads picked, incompatible LPs into outbound trailer based on door
    Given Login to Koerber with user "user38"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    #And  Execute Pick Work Queue Query
    Then select Tibco Load ID "HJBT1234567890626" and find the load ID with door assignment
    Then Verify the load release
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound Full Pallet Pick
    And Verify the picking and staging functionality for Full Pallet Pick With Two Items
    Then Perform FP Loading functionality with door and trailer
    
    
    @OutboundModuleTests @RegressionTests @TC_845715 @CSPICK
  	Scenario: Test Case 845715: Verify that when the user releases the load with a tracking number associated to its order, work type should be assigned to 35 or 05, ensure that user can find tracking number in SAP and SSMS server
	Given Login to Koerber with user "user10"
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Execute Pick Work Queue Query
    Then Select Tibco load id "HJBT10000122424" and find the load id
    Then Verify the load release
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    And Verify the cs picking and staging functionality with Single item
    Then Perform CS Loading functionality
    And Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Click on Print button Under Delivery BOL
    And verify the Shipping Process for other ecolab site
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Performance|Transactions"
    And verify Transaction History
    
    
    @OutboundModuleTests @RegressionTests @TC_845713 @CSPICK_FPPICK
    Scenario: Test Case 845713: TX_Out_Home Depot_01 : 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
    Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890577" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    Then Verify the Home Depot CS Picking and Staging functionality
    Then Verify the Home Depot CS Switch Full Pallet Picking and Staging functionality
    Then Perform cs and Full pick Loading functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Verify CS Full shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
    @OutboundModuleTests @RegressionTests @TC_911787 @CS_PICK
    Scenario: Test case 911787 : 6792_NOV_pallets_02_Perform Case/Piece picking process, system asks picker for pallet type, verify when chep pallet is selected the count of chep pallets at the warehouse decreases : 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And Select Warehouse and Query
    And Fill the details and Create Empty Appointment in Trailer management
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Verify the yard Trailer Inspect
    Then Execute Pick Work Queue Query
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Select Tibco load id "HJBT1234567890585" and find the load id
    Then Verify Load Release section is present
    And Click on MenuBar and Loginto Koerber1 mobile
    Then Go to Outbound CS pick page
    Then Verify the NOV CS Picking and Staging functionality
    Then Verify the NOV Loading Process functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    Then Verify CS Full shipping functionality
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advantage Dashboard|Receiving|Yard Management|Trailer Management"
    And verify the Checkout functionality
    
     @OutboundModuleTests @RegressionTests @TC_845678 @VIEWLOAD
    Scenario: Test Case 845678: IN_Del load_01'Control Tower deletes a load in EBS and then in Koerber, load deletes correctly in both systems(SAP Validation) 
    
    Given Login to Koerber with user "user38" 
    Then Click on menu and navigate to "Menu|Supply Chain Advantage|K.Motion Advanced Fulfillment Application|Load Planning|View Load"
    And Enter Tibco load id "HJBT1234567890646" and submit
    And Click Delete and confirm
    #HJBT1234567890620
    	
    	
