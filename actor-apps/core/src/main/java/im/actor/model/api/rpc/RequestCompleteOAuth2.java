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

public class RequestCompleteOAuth2 extends Request<ResponseAuth> {

    public static final int HEADER = 0xc4;
    public static RequestCompleteOAuth2 fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestCompleteOAuth2(), data);
    }

    private String transactionHash;
    private String code;

    public RequestCompleteOAuth2(@NotNull String transactionHash, @NotNull String code) {
        this.transactionHash = transactionHash;
        this.code = code;
    }

    public RequestCompleteOAuth2() {

    }

    @NotNull
    public String getTransactionHash() {
        return this.transactionHash;
    }

    @NotNull
    public String getCode() {
        return this.code;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.transactionHash = values.getString(1);
        this.code = values.getString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.transactionHash == null) {
            throw new IOException();
        }
        writer.writeString(1, this.transactionHash);
        if (this.code == null) {
            throw new IOException();
        }
        writer.writeString(2, this.code);
    }

    @Override
    public String toString() {
        String res = "rpc CompleteOAuth2{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
