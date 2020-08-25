package com.shangfang.domain;

public class ShoppingCart {
    private Integer id;
    private String tickettype;
    private Integer ticketnum;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTickettype() {
        return tickettype;
    }

    public void setTickettype(String tickettype) {
        this.tickettype = tickettype;
    }

    public Integer getTicketnum() {
        return ticketnum;
    }

    public void setTicketnum(Integer ticketnum) {
        this.ticketnum = ticketnum;
    }
}
