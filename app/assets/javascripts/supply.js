

class Supply{

  constructor(name,price,quantity,description,donations, category,id){
    this.name = name
    this.price = price
    this.quantity = quantity
    this.description = description
    this.donations = donations
    this.category = category
    this.id = id
  }

    formatted(){
      if(this.description == null){
        this.description = " - "
      }
      var amountNeeded= this.price * this.quantity
      return(`<h3> ${this.name}</h3><br> <h4> Price: $ ${this.price.toFixed(2)} | Quantity: ${this.quantity}</h4> <br> \n
        <h4> $${this.donations.toFixed(2)} out of $${amountNeeded.toFixed(2)} raised. </h4> \n
        <p> ${this.description}</p> <br> \n
        <form action = '/categories/${this.category}/supplies/${this.id}/donate'>
          <input type='text' name="supply_donations", value='0'>
          <input type='submit'>
        </form>

        `)

    }

}
