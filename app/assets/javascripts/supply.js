

class Supply{

  constructor(name,price,quantity,description,donations){
    this.name = name
    this.price = price
    this.quantity = quantity
    this.description = description
    this.donations = donations
  }

    formatted(){
      if(this.description == null){
        this.description = " - "
      }
      return(`<h3> ${this.name}</h3><br> <h4> Price: $ ${this.price} | Quantity: ${this.quantity}</h4> <br> \n
        <p> ${this.description}</p>`)

    }

}
