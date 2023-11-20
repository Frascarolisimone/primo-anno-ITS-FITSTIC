$(document).ready(() => {
    $("#anagrafe button").on("click",(event) => AggiungiStudente(event))
    });

$(".voti button").on("click"function() {});

function AggiungiStudente(event){
    var button = event.target;
    var input = $(button).siblings("input");
    var nome = input.val();

    var html = /*html*/ `
 <div class="studente">
    <p>$(nome)</p>
    <div class="voti">
    <input>
    <button>Aggiungi voto</button>
    </div>
 </div>
    `;
    $
}