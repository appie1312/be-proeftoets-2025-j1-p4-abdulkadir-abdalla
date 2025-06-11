<?php

class VulkaanModel
{
    private $db;

    public function __construct()
    {
        /** Door het maken van een database instantie
         *  kunnen we de database functies gebruiken
         *  en hebben we een verbinding met de database
         */
        $this->db = new Database();
    }

    public function getAllVulkanen()
    {
        $sql = 'SELECT VK.Naam
                      ,Vk.Hoogte 
                      ,VK.Land
                      ,VK.JaarLaatsteUitbarsting
                      ,VK.AantalSlachtoffers
        
                FROM Vulkaan as VK
                
                ORDER BY VK.AantalSlachtoffers DESC';

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}