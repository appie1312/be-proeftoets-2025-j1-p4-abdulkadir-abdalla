<?php

class ZangeresModel
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

    public function getAllZangeres()
    {
        $sql = 'SELECT ZR.Naam
                      ,ZR.Nettowaarde 
                      ,ZR.Land
                      ,ZR.Mobiel
                      ,ZR.Leeftijd 
        
                FROM Zangeres as ZR
                
                ORDER BY ZR.Leeftijd DESC';

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}