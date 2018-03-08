package com.imcs.spring.models;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Access(AccessType.FIELD)
@Table(name = "orders_products")
@Getter @Setter
@ToString
public class OrdersProducts {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "order_product_id")
	private Integer orderProductId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id", nullable = false)
	private Orders orders;
	
	@ManyToOne(cascade=CascadeType.ALL)
	private Products products;

	private int quantity;

}
