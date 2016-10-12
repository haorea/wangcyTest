package com.mvc.dto;

public class GameCountDto {

    private int id;
    private int inforId;
    private int allGamesCount;
    private int successCount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInforId() {
        return inforId;
    }

    public void setInforId(int inforId) {
        this.inforId = inforId;
    }

    public int getAllGamesCount() {
        return allGamesCount;
    }

    public void setAllGamesCount(int allGamesCount) {
        this.allGamesCount = allGamesCount;
    }

    public int getSuccessCount() {
        return successCount;
    }

    public void setSuccessCount(int successCount) {
        this.successCount = successCount;
    }

}
