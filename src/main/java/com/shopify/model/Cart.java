package com.shopify.model;

import javax.persistence.*;
import java.io.Serializable;
import java.time.Instant;

@Entity
@Table(name = "tbl_cart")
public class Cart implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;

	private Instant buyDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Instant getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Instant buyDate) {
		this.buyDate = buyDate;
	}

	public Cart() {
	}

	public Cart(User user, Instant buyDate) {
		this.user = user;
		this.buyDate = buyDate;
	}


}
