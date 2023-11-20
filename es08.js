function OpenSection(element){
    var parent = element.parentNode
    var p = parent.querySelector("p")
    p.classList.toggle("opened")
}