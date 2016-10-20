package com.mvc.model;

public class PlayerModel {

    private String id = null;
    private String inforId = null;
    private String name = null;
    private String date = null;
    private String gameStatus = null;
    private String roleId = null;
    private int successCount;
    private int allGamesCount;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getGameStatus() {
        return gameStatus;
    }

    public void setGameStatus(String gameStatus) {
        this.gameStatus = gameStatus;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getInforId() {
        return inforId;
    }

    public void setInforId(String inforId) {
        this.inforId = inforId;
    }

    public int getSuccessCount() {
        return successCount;
    }

    public void setSuccessCount(int successCount) {
        this.successCount = successCount;
    }

    public int getAllGamesCount() {
        return allGamesCount;
    }

    public void setAllGamesCount(int allGamesCount) {
        this.allGamesCount = allGamesCount;
    }

}
