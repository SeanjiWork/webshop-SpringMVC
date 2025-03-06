package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "albums")
public class Album extends BaseEntity {
    private String name;
    private String name_en;
    private int status;

    //User_id
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;


    //AlbumItem: Album - one => many AlbumItems
    @OneToMany(mappedBy = "album")
    private List<AlbumItem> albumItems;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<AlbumItem> getAlbumItems() {
        return albumItems;
    }

    public void setAlbumItems(List<AlbumItem> albumItems) {
        this.albumItems = albumItems;
    }

    @Override
    public String toString() {
        return "Album{" +
                "name='" + name + '\'' +
                ", name_en='" + name_en + '\'' +
                ", status=" + status +
                '}';
    }
}
