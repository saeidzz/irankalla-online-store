
var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {

    $scope.refreshCart = function () {
        $http.get('/irankallaOnlineStore/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };
    $scope.clearCart = function () {
        $http.delete('/irankallaOnlineStore/rest/cart/' + $scope.cartId).success($scope.refreshCart());
    };
    $scope.initCartID = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };
    $scope.addToCart = function (productId) {
        $http.put('/irankallaOnlineStore/rest/cart/add/' + productId).success(function () {
            alert("محصول با موفقیت به سبد اضافه شد.")
        });
    };


    $scope.removeFromCart = function (productId) {
        $http.put('/irankallaOnlineStore/rest/cart/remove/' + productId).success(function (data) {
            $scope.refreshCart();
        });
    };
    $scope.calGrandTotal=function () {
        var granTotal=0;
        for (var i=0;i<$scope.cart.cartItems.length;i++){
            granTotal+=$scope.cart.cartItems[i].totalPrice;
        }
        return granTotal;
    }
});