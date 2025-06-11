<?php

class Vulkaan extends BaseController
{
    private $VulkaanModel;

    public function __construct()
    {
        $this->VulkaanModel = $this->model('VulkaanModel');
    }

    public function index()
    {
        /**
         * Je roept de method getAllSmartphones aan van de smartphoneModel class
         */
        $results = $this->VulkaanModel->getAllVulkanen();
        
        $data = [
            'title' => 'Top 5 actiefste vulkanen ter wereld',
            'Vulkaan' => $results
        ];

        $this->view('Vulkaan/index', $data);
    }
}