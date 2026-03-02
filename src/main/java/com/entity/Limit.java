package com.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="limitexpense")

public class Limit 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int id;
    private String limit;  // expense limit
    private String period;       // DAILY or MONTHLY
    @ManyToOne
    @JoinColumn(name ="user_id")
    private User user;
	public Limit(String limit, String period, User user) {
		
		this.limit = limit;
		this.period = period;
		this.user = user;
	}
	public Limit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Limit [id=" + id + ", limit=" + limit + ", period=" + period + ", user=" + user + "]";
	}


	 
	
	
}
