import React from 'react';

const _percentages = [100, 70, 50, 30, 0];
const _toppings = ['Boba', 'Lychee Jelly', 'Grass Jelly']

class ReviewForm extends React.Component {
  constructor(props) {
    super(props)
  }

  renderPercentageOptions(type) {
    const options = _percentages.map( (percentage, idx) => {
      return (
        <option key={`${type}-${idx}`} value={percentage}>{percentage}%</option>
      );
    });
    return options;
  }

  renderToppingOptions() {
    const toppings = _toppings.map ( (topping, idx) => (
      <div key={`topping-${idx}`}>
        <input type="checkbox" id={topping} name="toppings" value={topping} />
        <label for={topping}>{topping}</label>
      </div>
    ));
    return toppings;
  }

  render() {
    return(
      <form className="review-form">
        <input type="text" placeholder="Drink" />
        <div className="rating">
          Rating:
          <input type="radio" name="rating" value="1" />
          <input type="radio" name="rating" value="2" />
          <input type="radio" name="rating" value="3" />
          <input type="radio" name="rating" value="4" />
          <input type="radio" name="rating" value="5" />
        </div>
        <textarea placeholder="Review"/>
        <label>Sugar: </label>
        <select>
          {this.renderPercentageOptions("sugar")}
        </select>
        <label>Ice: </label>
        <select>
          {this.renderPercentageOptions("ice")}
        </select>
        <div className="hot">
          <input type="radio" name="hot" id="cold" value="false" />
          <label for="cold">Cold</label>
          <input type="radio" name="hot" id="hot" value="true" />
          <label for="cold">Hot</label>
        </div>

        <div>
          Toppings:
          {this.renderToppingOptions()}
          <div>
            <input type="checkbox" id="other" name="toppings" value="other" />
            <label for="other">Other</label>
            <input type="text" id="otherValue" name="other" />
          </div>
        </div>
        <div>
          Upload Image:
          <input type="text" placeholder="Image"/>
        </div>

      </form>
    )
  }

}

export default ReviewForm;
