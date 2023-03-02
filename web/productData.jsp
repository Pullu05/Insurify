<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="product" value="${ProductData}"/>
<section class="rounded mt-3 formBlock">
    <form action="AddProductData" method="post" onsubmit="submitFormAndChangeSection(event)" id="productDataForm">

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Start Date</label>
            <div class="col-sm-6">
                <input  type="date" class="form-control" id="startDate" name="startDate" type="text" placeholder="MM/DD/YYYY" class="datepicker" value = "${product.startDate}" required>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Insurance Sum [$]</label>
            <div class="col-sm-6">
                <select id="insuranceSum" name="insuranceSum" class="form-control" value = "${product.insuranceSum}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="3000000" <c:if test = "${product.insuranceSum == '3000000'  }"> selected </c:if>> 3.000.000,00</option>
                    <option value="5000000" <c:if test = "${product.insuranceSum == '5000000'  }"> selected </c:if>> 5.000.000,00</option>
                    <option value="7000000" <c:if test = "${product.insuranceSum == '7000000'  }"> selected </c:if>> 7.000.000,00</option>
                    <option value="10000000" <c:if test = "${product.insuranceSum == '10000000'  }"> selected </c:if>> 10.000.000,00</option>
                    <option value="15000000" <c:if test = "${product.insuranceSum == '15000000'  }"> selected </c:if>> 15.000.000,00</option>
                    <option value="20000000" <c:if test = "${product.insuranceSum == '20000000'  }"> selected </c:if>> 20.000.000,00</option>
                    <option value="25000000" <c:if test = "${product.insuranceSum == '25000000'  }"> selected </c:if>> 25.000.000,00</option>
                    <option value="30000000" <c:if test = "${product.insuranceSum == '30000000'  }"> selected </c:if>> 30.000.000,00</option>
                    <option value="35000000" <c:if test = "${product.insuranceSum == '35000000'  }"> selected </c:if>> 35.000.000,00</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Merit Rating</label>
                <div class="col-sm-6">
                    <select id="meritRating" name="meritRating" class="form-control" value = "${product.meritRating}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="Super Bonus">Super Bonus</option>
                    <option value="Bonus 1" <c:if test = "${product.meritRating == 'Bonus 1'  }"> selected </c:if>>Bonus 1</option>
                    <option value="Bonus 2" <c:if test = "${product.meritRating == 'Bonus 2'  }"> selected </c:if>>Bonus 2</option>
                    <option value="Bonus 3" <c:if test = "${product.meritRating == 'Bonus 3'  }"> selected </c:if>>Bonus 3</option>
                    <option value="Bonus 4" <c:if test = "${product.meritRating == 'Bonus 4'  }"> selected </c:if>>Bonus 4</option>
                    <option value="Bonus 5" <c:if test = "${product.meritRating == 'Bonus 5'  }"> selected </c:if>>Bonus 5</option>
                    <option value="Bonus 6" <c:if test = "${product.meritRating == 'Bonus 6'  }"> selected </c:if>>Bonus 6</option>
                    <option value="Bonus 7" <c:if test = "${product.meritRating == 'Bonus 7'  }"> selected </c:if>>Bonus 7</option>
                    <option value="Bonus 8" <c:if test = "${product.meritRating == 'Bonus 8'  }"> selected </c:if>>Bonus 8</option>
                    <option value="Bonus 9" <c:if test = "${product.meritRating == 'Bonus 9'  }"> selected </c:if>>Bonus 9</option>
                    <option value="Malus 10" <c:if test = "${product.meritRating == 'Malus 10'  }"> selected </c:if>>Malus 10</option>
                    <option value="Malus 11" <c:if test = "${product.meritRating == 'Malus 11'  }"> selected </c:if>>Malus 11</option>
                    <option value="Malus 12" <c:if test = "${product.meritRating == 'Malus 12'  }"> selected </c:if>>Malus 12</option>
                    <option value="Malus 13" <c:if test = "${product.meritRating == 'Malus 13'  }"> selected </c:if>>Malus 13</option>
                    <option value="Malus 14" <c:if test = "${product.meritRating == 'Malus 14'  }"> selected </c:if>>Malus 14</option>
                    <option value="Malus 15" <c:if test = "${product.meritRating == 'Malus 15'  }"> selected </c:if>>Malus 15</option>
                    <option value="Malus 16" <c:if test = "${product.meritRating == 'Malus 16'  }"> selected </c:if>>Malus 16</option>
                    <option value="Malus 17" <c:if test = "${product.meritRating == 'Malus 17'  }"> selected </c:if>>Malus 17</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Damage Insurance</label>
                <div class="col-sm-6">
                    <select id="damageInsurance" name="damageInsurance" class="form-control" value = "${product.damageInsurance}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="No Coverage" <c:if test = "${product.damageInsurance == 'No Coverage'  }"> selected </c:if>>No Coverage</option>
                    <option value="Partial Coverage" <c:if test = "${product.damageInsurance == 'Partial Coverage'  }"> selected </c:if>>Partial Coverage</option>
                    <option value="Full Coverage" <c:if test = "${product.damageInsurance == 'Full Coverage'  }"> selected </c:if>>Full Coverage</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Optional Products</label>
                <div class="col-sm-6">
                    <p class="row">
                        <label>
                            <input id="EuroProtection" name="optionalProducts" type="checkbox" value="Euro Protection" required>Euro Protection</label>
                        <label>
                            <input id="LegalDefenseInsurance" name="optionalProducts" type="checkbox" value="Legal Defense Insurance" required>Legal Defense Insurance</label>
                    </p>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Courtesy Car</label>
                <div class="col-sm-6">
                    <select id="courtesyCar" name="courtesyCar" class="form-control" value = "${product.courtesyCar}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="No" <c:if test = "${product.courtesyCar == 'No'  }"> selected </c:if>> No</option>
                    <option value="Yes" <c:if test = "${product.courtesyCar == 'Yes'  }"> selected </c:if>> Yes</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label"></label>
            <div class="col-sm-6">
                <button data-sectionid="insurantData" type="button" class="btn btn-dark prevBtn" onclick="handleAutomobileSectionChange(event)">&laquo; Prev</button>
                <button data-sectionid="planData" type="submit" class="btn btn-dark nextBtn">Next &raquo;</button>
            </div>

        </div>
    </form>
</section>
