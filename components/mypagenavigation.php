<?php


class mypagenavigation
{
     var $sqlResult;
     var $myDB;

    public function __construct($DB){
        $this->myDB=new SafeMySQL(['db'=>$DB]);

    }
    
    private static function insertNumPageToHTML($numpage, $textpage, $baselink, $activepage=false) 
    {
        $typeclass = $activepage ? " class=\"activetablepage\" " : " class=\"tablepage\" ";
        $resultLink = $activepage ? $textpage : "<a href=\"$baselink$numpage\" class=\"myRef\">$textpage</a>";
        $result = "<div $typeclass>$resultLink</div>";
        return $result;
    }
    
    
    function SelectEchoToTableHTML($numtable,$numpageoftable)
    {
     
        
        if (!isset($numpageoftable)) $numpageoftable = 1;
        
        $myselect = "SELECT SQL_CALC_FOUND_ROWS * FROM ?n LIMIT ?i, ?i";
        switch ($numtable) {
            case 1: $nametableru = "номенклатура";
                    $nametable = "nomenclature";
                    break;
            case 2: $nametableru = "контрагенты";
                    $nametable = "contractingparties";
                    break;
                case 3: $nametableru = "взаиморасчёты c покупателями";
                    $nametable = "settlementswithbuyers";
                    break;
                case 4: $nametableru = "взаиморасчёты с продавцами";
                    $nametable = "settlementswithsuppliers";
                    break;
                case 5: $nametableru = "остатки";
                    $nametable = "nomenclatureremains";
                    break;

            default:
               return "";
        }
    
    $startindex = ($numpageoftable-1)*PER_PAGE;
    //   $startindex = 0;
    $sqlResult = $this->myDB->getAll($myselect,$nametable,$startindex,PER_PAGE);
    $kolrows = $this->myDB->getOne("SELECT FOUND_ROWS()");

    return $this->EchoToTableHTML($nametableru,$sqlResult, $numtable,$numpageoftable,$kolrows);
    }

   
    
 

    public static function getPage($kolrows, $PER_PAGE,$numpageoftable, $baselink)
    {
     
        
        $result ="</table><br><div id=\"numpagesfortable\">";
        
        $kolpages = ceil($kolrows/$PER_PAGE);
        $prev = 3;
        $first = $numpageoftable - $prev;
        if ($first<1) $first = 1;
        $last = $numpageoftable + $prev;
        //$baselink = "page.php?page=$numtable";
        $y = 1;
        if ($first>1) {
            $result.= self::insertNumPageToHTML($y, "1", $baselink);
        }
        $y = $first - 1;
        if($first>10) 
        {
            $result.= self::insertNumPageToHTML($y, "...", $baselink);
        } else 
        {
            for ($i=2;$i<$first;$i++)
            {
                $result.= self::insertNumPageToHTML($i, "$i", $baselink);
            }
        }
        for ($i=$first;$i<$last+1;$i++) 
        {
            if ($i==$numpageoftable)
            {
                $result.= self::insertNumPageToHTML("", "$i", $baselink, TRUE);
            }
            else 
            {
                $result.= self::insertNumPageToHTML($i, "$i", $baselink);
            }
        }
        $y = $last + 1;
        if ($last<$kolpages&&$kolpages-$last>2) 
        {
            $result.= self::insertNumPageToHTML($y, "...", $baselink);
        }
        if ($last<$kolpages) 
        {
            $result.= self::insertNumPageToHTML($kolpages, "$kolpages", $baselink);
        }
        $result.="</div>";
        return $result;

    }
}
