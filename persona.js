    class Persona {
        nome;
        cognome;
        eta = 0;

        static bigbang = 13000000000

        constructor(nome, cognome) { //nome e cognome lo dovrà scrivere la persona
            this.nome = nome;
            this.cognome = cognome;
           
        }

        dormi() {
            console.log("sto dormendo!");
        }

        mangia(){
            console.log("sto mangiando!");
        }
    }

    var persona = new Persona("luca", "pinotti");

    persons.mangia()

    alert(persona.nome);