.class public final Lcom/alipay/mobile/command/engine/ScripterExecutor;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static b:Lcom/alipay/mobile/command/engine/ScripterExecutor;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/command/engine/ScripterExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->b:Lcom/alipay/mobile/command/engine/ScripterExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/command/engine/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/a;-><init>(Lcom/alipay/mobile/command/engine/ScripterExecutor;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/command/engine/BridgeJsToJava;

    invoke-direct {v1}, Lcom/alipay/mobile/command/engine/BridgeJsToJava;-><init>()V

    const-string/jumbo v2, "command"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "<html><script language=\"javascript\">alert(\"2\");</script></html>"

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cmdInitialTemp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "tempCmd.html"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "crash commandCenter webView initial Error."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a()Lcom/alipay/mobile/command/engine/ScripterExecutor;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->b:Lcom/alipay/mobile/command/engine/ScripterExecutor;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/command/model/TaskMetaWrap;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u5f00\u59cb\u6267\u884c\u4efb\u52a1:"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getTaskName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ":"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getDepencyCommandList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getJsScript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getDepencyCommandList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getRuntimeBizContext()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "var JsExecutorWrapper = {exejs :##exejs##,getInstance : function() {this.executorJs = function() {var result = false;try { result = JsExecutorWrapper.exejs(); } catch (err) { alert(\"js-ext-command-error|\" + err);} finally { alert(\"##taskUUID##|js-ext-command-finish|\" + result);}}; return this; }};JsExecutorWrapper.getInstance().executorJs();"

    const-string/jumbo v8, "##exejs##"

    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "##taskUUID##"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "window.command.doCommand(\'"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/CommandManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "window.command.doCommand(\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25,\u5b58\u5728\u4f9d\u8d56\u5173\u7cfb,\u4f46\u662f\u4f9d\u8d56\u5173\u7cfb\u4e2d\u914d\u7f6e\u7684\u6570\u636e\u6ca1\u6709\u5b8c\u6210\u66ff\u6362.taskUUID:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",depency:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/CommandManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ",temp:"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, ",result:"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v4, v7, v8

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25,\u5b58\u5728\u4f9d\u8d56\u5173\u7cfb,\u4f46\u662f\u4f9d\u8d56\u5173\u7cfb\u4e2d\u914d\u7f6e\u7684\u6570\u636e\u6ca1\u6709\u5b8c\u6210\u66ff\u6362.taskUUID:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v6, 0x2

    const-string/jumbo v9, ",depency:"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/CommandManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    const/4 v0, 0x4

    const-string/jumbo v6, ",temp:"

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    const-string/jumbo v5, ",result:"

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v4, v8, v0

    invoke-static {v7, v8}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "javascript:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move-object v4, v5

    goto/16 :goto_0

    :cond_3
    move-object v0, v4

    :cond_4
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "${RuntimeParam}"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "window.command.doCommand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25,\u5b58\u5728\u4f9d\u8d56\u5173\u7cfb,\u4f46\u662f\u4f9d\u8d56\u5173\u7cfb\u4e2d\u914d\u7f6e\u7684\u6570\u636e\u5728\u811a\u672c\u4e2d\u65e0\u6cd5\u66ff\u6362,\u9a8c\u8bc1bug.taskUUID:"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v6, v0, v4

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25,\u5b58\u5728\u4f9d\u8d56\u5173\u7cfb,\u4f46\u662f\u4f9d\u8d56\u5173\u7cfb\u4e2d\u914d\u7f6e\u7684\u6570\u636e\u5728\u811a\u672c\u4e2d\u65e0\u6cd5\u66ff\u6362,\u9a8c\u8bc1bug.taskUUID:"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "\u653e\u5f03\u6267\u884ctask:"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "\u811a\u672c\u6784\u5efa\u5931\u8d25"

    aput-object v4, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u653e\u5f03\u6267\u884ctask:"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\u811a\u672c\u6784\u5efa\u5931\u8d25"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v3, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "\u653e\u5f03\u6267\u884ctask:"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "\u5176\u4f9d\u8d56\u7684command\u65e0\u6cd5\u6ee1\u8db3."

    aput-object v4, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u653e\u5f03\u6267\u884ctask:"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\u5176\u4f9d\u8d56\u7684command\u65e0\u6cd5\u6ee1\u8db3."

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    :cond_8
    :goto_4
    new-array v0, v12, [Ljava/lang/Object;

    const-string/jumbo v1, "\u6267\u884ctask:"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const-string/jumbo v1, "\u5931\u8d25,\u5176\u4f9d\u8d56\u7684command\u65e0\u6cd5\u6ee1\u8db3."

    aput-object v1, v0, v11

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move v1, v2

    :goto_5
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25."

    aput-object v6, v4, v5

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "script"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string/jumbo v6, "\u6784\u5efa\u811a\u672c\u6267\u884c\u5931\u8d25."

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_6
    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v1, v3

    goto :goto_5
.end method

.method public final b()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a:Landroid/webkit/WebView;

    return-object v0
.end method
