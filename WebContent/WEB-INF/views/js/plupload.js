/*1.5.7*/
(function() {
    var f = 0, k = [], m = {}, i = {}, a = {
        "<": "lt",
        ">": "gt",
        "&": "amp",
        '"': "quot",
        "'": "#39"
    }, l = /[<>&\"\']/g, b, c = window.setTimeout, d = {}, e;
    function h() {
        this.returnValue = false
    }
    function j() {
        this.cancelBubble = true
    }
    (function(n) {
        var o = n.split(/,/), p, r, q;
        for (p = 0; p < o.length; p += 2) {
            q = o[p + 1].split(/ /);
            for (r = 0; r < q.length; r++) {
                i[q[r]] = o[p]
            }
        }
    })
            ("application/msword,doc dot,application/pdf,pdf,application/pgp-signature,pgp,application/postscript,ps ai eps,application/rtf,rtf,application/vnd.ms-excel,xls xlb,application/vnd.ms-powerpoint,ppt pps pot,application/zip,zip,application/x-shockwave-flash,swf swfl,application/vnd.openxmlformats-officedocument.wordprocessingml.document,docx,application/vnd.openxmlformats-officedocument.wordprocessingml.template,dotx,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,xlsx,application/vnd.openxmlformats-officedocument.presentationml.presentation,pptx,application/vnd.openxmlformats-officedocument.presentationml.template,potx,application/vnd.openxmlformats-officedocument.presentationml.slideshow,ppsx,application/x-javascript,js,application/json,json,audio/mpeg,mpga mpega mp2 mp3,audio/x-wav,wav,audio/mp4,m4a,image/bmp,bmp,image/gif,gif,image/jpeg,jpeg jpg jpe,image/photoshop,psd,image/png,png,image/svg+xml,svg svgz,image/tiff,tiff tif,text/plain,asc txt text diff log,text/html,htm html xhtml,text/css,css,text/csv,csv,text/rtf,rtf,video/mpeg,mpeg mpg mpe m2v,video/quicktime,qt mov,video/mp4,mp4,video/x-m4v,m4v,video/x-flv,flv,video/x-ms-wmv,wmv,video/avi,avi,video/webm,webm,video/3gpp,3gp,video/3gpp2,3g2,video/vnd.rn-realvideo,rv,application/vnd.oasis.opendocument.formula-template,otf,application/octet-stream,exe");
    var g = {
        VERSION: "1.5.7",
        STOPPED: 1,
        STARTED: 2,
        QUEUED: 1,
        UPLOADING: 2,
        FAILED: 4,
        DONE: 5,
        GENERIC_ERROR: -100,
        HTTP_ERROR: -200,
        IO_ERROR: -300,
        SECURITY_ERROR: -400,
        INIT_ERROR: -500,
        FILE_SIZE_ERROR: -600,
        FILE_EXTENSION_ERROR: -601,
        IMAGE_FORMAT_ERROR: -700,
        IMAGE_MEMORY_ERROR: -701,
        IMAGE_DIMENSIONS_ERROR: -702,
        mimeTypes: i,
        ua: (function() {
            var r = navigator, q = r.userAgent, s = r.vendor, o, n, p;
            o = /WebKit/.test(q);
            p = o && s.indexOf("Apple") !== -1;
            n = window.opera && window.opera.buildNumber;
            return {
                windows: navigator.platform.indexOf("Win") !== -1,
                android: /Android/.test(q),
                ie: !o && !n && (/MSIE/gi).test(q) && (/Explorer/gi).test(r.appName),
                webkit: o,
                gecko: !o && /Gecko/.test(q),
                safari: p,
                opera: !!n
            }
        }()),
        typeOf: function(n) {
            return ({}).toString.call(n).match(/\s([a-z|A-Z]+)/)[1].toLowerCase()
        },
        extend: function(n) {
            g.each(arguments, function(o, p) {
                if (p > 0) {
                    g.each(o, function(r, q) {
                        n[q] = r
                    })
                }
            });
            return n
        },
        cleanName: function(n) {
            var o, p;
            p = [ /[\300-\306]/g, "A", /[\340-\346]/g, "a", /\307/g, "C", /\347/g, "c", /[\310-\313]/g, "E", /[\350-\353]/g, "e", /[\314-\317]/g, "I", /[\354-\357]/g, "i", /\321/g, "N", /\361/g, "n", /[\322-\330]/g, "O", /[\362-\370]/g, "o", /[\331-\334]/g, "U", /[\371-\374]/g, "u" ];
            for (o = 0; o < p.length; o += 2) {
                n = n.replace(p[o], p[o + 1])
            }
            n = n.replace(/\s+/g, "_");
            n = n.replace(/[^a-z0-9_\-\.]+/gi, "");
            return n
        },
        addRuntime: function(n, o) {
            o.name = n;
            k[n] = o;
            k.push(o);
            return o
        },
        guid: function() {
            var n = new Date().getTime().toString(32), o;
            for (o = 0; o < 5; o++) {
                n += Math.floor(Math.random() * 65535).toString(32)
            }
            return (g.guidPrefix || "p") + n + (f++).toString(32)
        },
        buildUrl: function(o, n) {
            var p = "";
            g.each(n, function(r, q) {
                p += (p ? "&" : "") + encodeURIComponent(q) + "=" + encodeURIComponent(r)
            });
            if (p) {
                o += (o.indexOf("?") > 0 ? "&" : "?") + p
            }
            return o
        },
        each: function(q, r) {
            var p, o, n;
            if (q) {
                p = q.length;
                if (p === b) {
                    for (o in q) {
                        if (q.hasOwnProperty(o)) {
                            if (r(q[o], o) === false) {
                                return
                            }
                        }
                    }
                } else {
                    for (n = 0; n < p; n++) {
                        if (r(q[n], n) === false) {
                            return
                        }
                    }
                }
            }
        },
        formatSize: function(n) {
            if (n === b || /\D/.test(n)) {
                return g.translate("N/A")
            }
            if (n > 1073741824) {
                return Math.round(n / 1073741824, 1) + " GB"
            }
            if (n > 1048576) {
                return Math.round(n / 1048576, 1) + " MB"
            }
            if (n > 1024) {
                return Math.round(n / 1024, 1) + " KB"
            }
            return n + " b"
        },
        getPos: function(o, s) {
            var t = 0, r = 0, v, u = document, p, q;
            o = o;
            s = s || u.body;
            function n(B) {
                var z, A, w = 0, C = 0;
                if (B) {
                    A = B.getBoundingClientRect();
                    z = u.compatMode === "CSS1Compat" ? u.documentElement : u.body;
                    w = A.left + z.scrollLeft;
                    C = A.top + z.scrollTop
                }
                return {
                    x: w,
                    y: C
                }
            }
            if (o && o.getBoundingClientRect && g.ua.ie && (!u.documentMode || u.documentMode < 8)) {
                p = n(o);
                q = n(s);
                return {
                    x: p.x - q.x,
                    y: p.y - q.y
                }
            }
            v = o;
            while (v && v != s && v.nodeType) {
                t += v.offsetLeft || 0;
                r += v.offsetTop || 0;
                v = v.offsetParent
            }
            v = o.parentNode;
            while (v && v != s && v.nodeType) {
                t -= v.scrollLeft || 0;
                r -= v.scrollTop || 0;
                v = v.parentNode
            }
            return {
                x: t,
                y: r
            }
        },
        getSize: function(n) {
            return {
                w: n.offsetWidth || n.clientWidth,
                h: n.offsetHeight || n.clientHeight
            }
        },
        parseSize: function(n) {
            var o;
            if (typeof (n) == "string") {
                n = /^([0-9]+)([mgk]?)$/.exec(n.toLowerCase().replace(/[^0-9mkg]/g, ""));
                o = n[2];
                n = +n[1];
                if (o == "g") {
                    n *= 1073741824
                }
                if (o == "m") {
                    n *= 1048576
                }
                if (o == "k") {
                    n *= 1024
                }
            }
            return n
        },
        xmlEncode: function(n) {
            return n ? ("" + n).replace(l, function(o) {
                return a[o] ? "&" + a[o] + ";" : o
            }) : n
        },
        toArray: function(p) {
            var o, n = [];
            for (o = 0; o < p.length; o++) {
                n[o] = p[o]
            }
            return n
        },
        inArray: function(p, q) {
            if (q) {
                if (Array.prototype.indexOf) {
                    return Array.prototype.indexOf.call(q, p)
                }
                for (var n = 0, o = q.length; n < o; n++) {
                    if (q[n] === p) {
                        return n
                    }
                }
            }
            return -1
        },
        addI18n: function(n) {
            return g.extend(m, n)
        },
        translate: function(n) {
            return m[n] || n
        },
        isEmptyObj: function(n) {
            if (n === b) {
                return true
            }
            for ( var o in n) {
                return false
            }
            return true
        },
        hasClass: function(p, o) {
            var n;
            if (p.className == "") {
                return false
            }
            n = new RegExp("(^|\\s+)" + o + "(\\s+|$)");
            return n.test(p.className)
        },
        addClass: function(o, n) {
            if (!g.hasClass(o, n)) {
                o.className = o.className == "" ? n : o.className.replace(/\s+$/, "") + " " + n
            }
        },
        removeClass: function(p, o) {
            var n = new RegExp("(^|\\s+)" + o + "(\\s+|$)");
            p.className = p.className.replace(n, function(r, q, s) {
                return q === " " && s === " " ? " " : ""
            })
        },
        getStyle: function(o, n) {
            if (o.currentStyle) {
                return o.currentStyle[n]
            } else {
                if (window.getComputedStyle) {
                    return window.getComputedStyle(o, null)[n]
                }
            }
        },
        addEvent: function(s, n, t) {
            var r, q, p, o;
            o = arguments[3];
            n = n.toLowerCase();
            if (e === b) {
                e = "Plupload_" + g.guid()
            }
            if (s.addEventListener) {
                r = t;
                s.addEventListener(n, r, false)
            } else {
                if (s.attachEvent) {
                    r = function() {
                        var u = window.event;
                        if (!u.target) {
                            u.target = u.srcElement
                        }
                        u.preventDefault = h;
                        u.stopPropagation = j;
                        t(u)
                    };
                    s.attachEvent("on" + n, r)
                }
            }
            if (s[e] === b) {
                s[e] = g.guid()
            }
            if (!d.hasOwnProperty(s[e])) {
                d[s[e]] = {}
            }
            q = d[s[e]];
            if (!q.hasOwnProperty(n)) {
                q[n] = []
            }
            q[n].push({
                func: r,
                orig: t,
                key: o
            })
        },
        removeEvent: function(s, n) {
            var q, t, p;
            if (typeof (arguments[2]) == "function") {
                t = arguments[2]
            } else {
                p = arguments[2]
            }
            n = n.toLowerCase();
            if (s[e] && d[s[e]] && d[s[e]][n]) {
                q = d[s[e]][n]
            } else {
                return
            }
            for (var o = q.length - 1; o >= 0; o--) {
                if (q[o].key === p || q[o].orig === t) {
                    if (s.removeEventListener) {
                        s.removeEventListener(n, q[o].func, false)
                    } else {
                        if (s.detachEvent) {
                            s.detachEvent("on" + n, q[o].func)
                        }
                    }
                    q[o].orig = null;
                    q[o].func = null;
                    q.splice(o, 1);
                    if (t !== b) {
                        break
                    }
                }
            }
            if (!q.length) {
                delete d[s[e]][n]
            }
            if (g.isEmptyObj(d[s[e]])) {
                delete d[s[e]];
                try {
                    delete s[e]
                } catch (r) {
                    s[e] = b
                }
            }
        },
        removeAllEvents: function(o) {
            var n = arguments[1];
            if (o[e] === b || !o[e]) {
                return
            }
            g.each(d[o[e]], function(q, p) {
                g.removeEvent(o, p, n)
            })
        }
    };
    g.Uploader = function(r) {
        var o = {}, u, t = [], q, p = false;
        u = new g.QueueProgress();
        r = g.extend({
            chunk_size: 0,
            multipart: true,
            multi_selection: true,
            file_data_name: "file",
            filters: []
        }, r);
        function s() {
            var w, x = 0, v;
            if (this.state == g.STARTED) {
                for (v = 0; v < t.length; v++) {
                    if (!w && t[v].status == g.QUEUED) {
                        w = t[v];
                        w.status = g.UPLOADING;
                        if (this.trigger("BeforeUpload", w)) {
                            this.trigger("UploadFile", w)
                        }
                    } else {
                        x++
                    }
                }
                if (x == t.length) {
                    this.stop();
                    this.trigger("UploadComplete", t)
                }
            }
        }
        function n() {
            var w, v;
            u.reset();
            for (w = 0; w < t.length; w++) {
                v = t[w];
                if (v.size !== b) {
                    u.size += v.size;
                    u.loaded += v.loaded
                } else {
                    u.size = b
                }
                if (v.status == g.DONE) {
                    u.uploaded++
                } else {
                    if (v.status == g.FAILED) {
                        u.failed++
                    } else {
                        u.queued++
                    }
                }
            }
            if (u.size === b) {
                u.percent = t.length > 0 ? Math.ceil(u.uploaded / t.length * 100) : 0
            } else {
                u.bytesPerSec = Math.ceil(u.loaded / ((+new Date() - q || 1) / 1000));
                u.percent = u.size > 0 ? Math.ceil(u.loaded / u.size * 100) : 0
            }
        }
        g.extend(this, {
            state: g.STOPPED,
            runtime: "",
            features: {},
            files: t,
            settings: r,
            total: u,
            id: g.guid(),
            init: function() {
                var A = this, B, x, w, z = 0, y;
                if (typeof (r.preinit) == "function") {
                    r.preinit(A)
                } else {
                    g.each(r.preinit, function(D, C) {
                        A.bind(C, D)
                    })
                }
                r.page_url = r.page_url || document.location.pathname.replace(/\/[^\/]+$/g, "/");
                if (!/^(\w+:\/\/|\/)/.test(r.url)) {
                    r.url = r.page_url + r.url
                }
                r.chunk_size = g.parseSize(r.chunk_size);
                r.max_file_size = g.parseSize(r.max_file_size);
                A.bind("FilesAdded", function(C, F) {
                    var E, D, H = 0, I, G = r.filters;
                    if (G && G.length) {
                        I = [];
                        g.each(G, function(J) {
                            g.each(J.extensions.split(/,/), function(K) {
                                if (/^\s*\*\s*$/.test(K)) {
                                    I.push("\\.*")
                                } else {
                                    I.push("\\." + K.replace(new RegExp("[" + ("/^$.*+?|()[]{}\\".replace(/./g, "\\$&")) + "]", "g"), "\\$&"))
                                }
                            })
                        });
                        I = new RegExp(I.join("|") + "$", "i")
                    }
                    for (E = 0; E < F.length; E++) {
                        D = F[E];
                        D.loaded = 0;
                        D.percent = 0;
                        D.status = g.QUEUED;
                        if (I && !I.test(D.name)) {
                            C.trigger("Error", {
                                code: g.FILE_EXTENSION_ERROR,
                                message: g.translate("File extension error."),
                                file: D
                            });
                            continue
                        }
                        if (D.size !== b && D.size > r.max_file_size) {
                            C.trigger("Error", {
                                code: g.FILE_SIZE_ERROR,
                                message: g.translate("File size error."),
                                file: D
                            });
                            continue
                        }
                        t.push(D);
                        H++
                    }
                    if (H) {
                        c(function() {
                            A.trigger("QueueChanged");
                            A.refresh()
                        }, 1)
                    } else {
                        return false
                    }
                });
                if (r.unique_names) {
                    A.bind("UploadFile", function(C, D) {
                        var F = D.name.match(/\.([^.]+)$/), E = "tmp";
                        if (F) {
                            E = F[1]
                        }
                        D.target_name = D.id + "." + E
                    })
                }
                A.bind("UploadProgress", function(C, D) {
                    D.percent = D.size > 0 ? Math.ceil(D.loaded / D.size * 100) : 100;
                    n()
                });
                A.bind("StateChanged", function(C) {
                    if (C.state == g.STARTED) {
                        q = (+new Date())
                    } else {
                        if (C.state == g.STOPPED) {
                            for (B = C.files.length - 1; B >= 0; B--) {
                                if (C.files[B].status == g.UPLOADING) {
                                    C.files[B].status = g.QUEUED;
                                    n()
                                }
                            }
                        }
                    }
                });
                A.bind("QueueChanged", n);
                A.bind("Error", function(C, D) {
                    if (D.file) {
                        D.file.status = g.FAILED;
                        n();
                        if (C.state == g.STARTED) {
                            c(function() {
                                s.call(A)
                            }, 1)
                        }
                    }
                });
                A.bind("FileUploaded", function(C, D) {
                    D.status = g.DONE;
                    D.loaded = D.size;
                    C.trigger("UploadProgress", D);
                    c(function() {
                        s.call(A)
                    }, 1)
                });
                if (r.runtimes) {
                    x = [];
                    y = r.runtimes.split(/\s?,\s?/);
                    for (B = 0; B < y.length; B++) {
                        if (k[y[B]]) {
                            x.push(k[y[B]])
                        }
                    }
                } else {
                    x = k
                }
                function v() {
                    var F = x[z++], E, C, D;
                    if (F) {
                        E = F.getFeatures();
                        C = A.settings.required_features;
                        if (C) {
                            C = C.split(",");
                            for (D = 0; D < C.length; D++) {
                                if (!E[C[D]]) {
                                    v();
                                    return
                                }
                            }
                        }
                        F.init(A, function(G) {
                            if (G && G.success) {
                                A.features = E;
                                A.runtime = F.name;
                                A.trigger("Init", {
                                    runtime: F.name
                                });
                                A.trigger("PostInit");
                                A.refresh()
                            } else {
                                v()
                            }
                        })
                    } else {
                        A.trigger("Error", {
                            code: g.INIT_ERROR,
                            message: g.translate("Init error.")
                        })
                    }
                }
                v();
                if (typeof (r.init) == "function") {
                    r.init(A)
                } else {
                    g.each(r.init, function(D, C) {
                        A.bind(C, D)
                    })
                }
            },
            refresh: function() {
                this.trigger("Refresh")
            },
            start: function() {
                if (t.length && this.state != g.STARTED) {
                    this.state = g.STARTED;
                    this.trigger("StateChanged");
                    s.call(this)
                }
            },
            stop: function() {
                if (this.state != g.STOPPED) {
                    this.state = g.STOPPED;
                    this.trigger("CancelUpload");
                    this.trigger("StateChanged")
                }
            },
            disableBrowse: function() {
                p = arguments[0] !== b ? arguments[0] : true;
                this.trigger("DisableBrowse", p)
            },
            getFile: function(w) {
                var v;
                for (v = t.length - 1; v >= 0; v--) {
                    if (t[v].id === w) {
                        return t[v]
                    }
                }
            },
            removeFile: function(w) {
                var v;
                for (v = t.length - 1; v >= 0; v--) {
                    if (t[v].id === w.id) {
                        return this.splice(v, 1)[0]
                    }
                }
            },
            splice: function(x, v) {
                var w;
                w = t.splice(x === b ? 0 : x, v === b ? t.length : v);
                this.trigger("FilesRemoved", w);
                this.trigger("QueueChanged");
                return w
            },
            trigger: function(w) {
                var y = o[w.toLowerCase()], x, v;
                if (y) {
                    v = Array.prototype.slice.call(arguments);
                    v[0] = this;
                    for (x = 0; x < y.length; x++) {
                        if (y[x].func.apply(y[x].scope, v) === false) {
                            return false
                        }
                    }
                }
                return true
            },
            hasEventListener: function(v) {
                return !!o[v.toLowerCase()]
            },
            bind: function(v, x, w) {
                var y;
                v = v.toLowerCase();
                y = o[v] || [];
                y.push({
                    func: x,
                    scope: w || this
                });
                o[v] = y
            },
            unbind: function(v) {
                v = v.toLowerCase();
                var y = o[v], w, x = arguments[1];
                if (y) {
                    if (x !== b) {
                        for (w = y.length - 1; w >= 0; w--) {
                            if (y[w].func === x) {
                                y.splice(w, 1);
                                break
                            }
                        }
                    } else {
                        y = []
                    }
                    if (!y.length) {
                        delete o[v]
                    }
                }
            },
            unbindAll: function() {
                var v = this;
                g.each(o, function(x, w) {
                    v.unbind(w)
                })
            },
            destroy: function() {
                this.stop();
                this.trigger("Destroy");
                this.unbindAll()
            }
        })
    };
    g.File = function(q, o, p) {
        var n = this;
        n.id = q;
        n.name = o;
        n.size = p;
        n.loaded = 0;
        n.percent = 0;
        n.status = 0
    };
    g.Runtime = function() {
        this.getFeatures = function() {
        };
        this.init = function(n, o) {
        }
    };
    g.QueueProgress = function() {
        var n = this;
        n.size = 0;
        n.loaded = 0;
        n.uploaded = 0;
        n.failed = 0;
        n.queued = 0;
        n.percent = 0;
        n.bytesPerSec = 0;
        n.reset = function() {
            n.size = n.loaded = n.uploaded = n.failed = n.queued = n.percent = n.bytesPerSec = 0
        }
    };
    g.runtimes = {};
    window.plupload = g
})();