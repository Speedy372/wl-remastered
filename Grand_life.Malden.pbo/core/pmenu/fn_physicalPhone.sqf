if ("ItemRadio" in assignedItems player) then {
    createDialog "Life_cell_phone";
} else {
    hint parseText format["<t size=1.30' font='puristaMedium' align='center' color='#ead116'>Brak telefonu.</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Musisz posiadać telefon. Możesz go kupić w sklepie wielobranżowym.</t><br/&gt"];
};