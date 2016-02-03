package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiEncryptedDataCommon extends ApiEncryptedData {

    private String name;
    private byte[] data;

    public ApiEncryptedDataCommon(@NotNull String name, @NotNull byte[] data) {
        this.name = name;
        this.data = data;
    }

    public ApiEncryptedDataCommon() {

    }

    public int getHeader() {
        return 2;
    }

    @NotNull
    public String getName() {
        return this.name;
    }

    @NotNull
    public byte[] getData() {
        return this.data;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.name = values.getString(1);
        this.data = values.getBytes(2);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.name == null) {
            throw new IOException();
        }
        writer.writeString(1, this.name);
        if (this.data == null) {
            throw new IOException();
        }
        writer.writeBytes(2, this.data);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct EncryptedDataCommon{";
        res += "name=" + this.name;
        res += ", data=" + byteArrayToString(this.data);
        res += "}";
        return res;
    }

}
