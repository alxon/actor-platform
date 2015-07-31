package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class ResponseJoinGroup extends Response {

    public static final int HEADER = 0xb5;
    public static ResponseJoinGroup fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseJoinGroup(), data);
    }

    private Group group;
    private List<User> users;
    private long rid;
    private int seq;
    private byte[] state;
    private long date;

    public ResponseJoinGroup(@NotNull Group group, @NotNull List<User> users, long rid, int seq, @NotNull byte[] state, long date) {
        this.group = group;
        this.users = users;
        this.rid = rid;
        this.seq = seq;
        this.state = state;
        this.date = date;
    }

    public ResponseJoinGroup() {

    }

    @NotNull
    public Group getGroup() {
        return this.group;
    }

    @NotNull
    public List<User> getUsers() {
        return this.users;
    }

    public long getRid() {
        return this.rid;
    }

    public int getSeq() {
        return this.seq;
    }

    @NotNull
    public byte[] getState() {
        return this.state;
    }

    public long getDate() {
        return this.date;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.group = values.getObj(1, new Group());
        List<User> _users = new ArrayList<User>();
        for (int i = 0; i < values.getRepeatedCount(5); i ++) {
            _users.add(new User());
        }
        this.users = values.getRepeatedObj(5, _users);
        this.rid = values.getLong(6);
        this.seq = values.getInt(2);
        this.state = values.getBytes(3);
        this.date = values.getLong(4);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.group == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.group);
        writer.writeRepeatedObj(5, this.users);
        writer.writeLong(6, this.rid);
        writer.writeInt(2, this.seq);
        if (this.state == null) {
            throw new IOException();
        }
        writer.writeBytes(3, this.state);
        writer.writeLong(4, this.date);
    }

    @Override
    public String toString() {
        String res = "tuple JoinGroup{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
