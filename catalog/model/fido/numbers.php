<?php
class ModelFidoNumbers extends Model {

    public function getNumbers() {
        $query = $this->db->query("SELECT number FROM " . DB_PREFIX . "numbers WHERE (ishelp != 1 AND status = 1)");
        return $query->rows;
    }

    public function getHelpNumber() {
        $query = $this->db->query("SELECT number FROM " . DB_PREFIX . "numbers WHERE ( ishelp = 1 AND status = 1) LIMIT 0, 1");
        return $query->rows;
    }
}
?>
