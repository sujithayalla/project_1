package com.niit.dao;

import java.util.List;

import com.niit.models.CartItem;
import com.niit.models.User;

public interface CartItemDao {
void addToCart(CartItem cartItem);
User getUser(String email);
List<CartItem>  getCart(String email);//select * from cartitem where user_email=?
void removeCartItem(int cartItemId);
}
