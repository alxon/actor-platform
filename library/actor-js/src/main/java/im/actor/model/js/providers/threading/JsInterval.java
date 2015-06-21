/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.js.providers.threading;

import com.google.gwt.core.client.JavaScriptObject;

/**
 * Created by ex3ndr on 08.06.15.
 */
public class JsInterval extends JavaScriptObject {
    public static native JsInterval create(Runnable runnable)/*-{
        return {runnable: runnable};
    }-*/;

    protected JsInterval() {

    }

    public final void scheduleNow() {
        schedule(0);
    }

    public native final void schedule(int msec)/*-{
        if (this.timerId) {
            clearTimeout(this.timerId);
            this.timerId = null;
        }
        var _runnable = this.runnable
        this.timerId = setTimeout(function() {
            _runnable.@java.lang.Runnable::run()();
        }, msec);
    }-*/;

    public native final void cancel()/*-{
        if (this.timerId) {
            clearTimeout(this.timerId);
            this.timerId = null;
        }
    }-*/;
}
