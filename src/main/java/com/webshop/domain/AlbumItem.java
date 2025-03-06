package com.webshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "album_item")
public class AlbumItem extends BaseEntity {
    private String name;
    private String subName;
    private String description;
    private String image;
    private String video;
    private String link;
    private String linkEn;
    private String linkName;
    private String linkNameEn;
    private String target;

    //Album_id
    @ManyToOne
    @JoinColumn(name = "album_id")
    private Album album;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getLinkEn() {
        return linkEn;
    }

    public void setLinkEn(String linkEn) {
        this.linkEn = linkEn;
    }

    public String getLinkName() {
        return linkName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName;
    }

    public String getLinkNameEn() {
        return linkNameEn;
    }

    public void setLinkNameEn(String linkNameEn) {
        this.linkNameEn = linkNameEn;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    @Override
    public String toString() {
        return "AlbumItem{" +
                "name='" + name + '\'' +
                ", subName='" + subName + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", video='" + video + '\'' +
                ", link='" + link + '\'' +
                ", linkEn='" + linkEn + '\'' +
                ", linkName='" + linkName + '\'' +
                ", linkNameEn='" + linkNameEn + '\'' +
                ", target='" + target + '\'' +
                '}';
    }
}
