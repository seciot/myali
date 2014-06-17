.class public Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/MicroApplicationContext;


# static fields
.field private static final synthetic l:La/a/a/b;

.field private static final synthetic m:La/a/a/b;

.field private static final synthetic n:La/a/a/b;

.field private static final synthetic o:La/a/a/b;

.field private static final synthetic p:La/a/a/b;

.field private static final synthetic q:La/a/a/b;

.field private static final synthetic r:La/a/a/b;

.field private static final synthetic s:La/a/a/b;

.field private static final synthetic t:La/a/a/b;

.field private static final synthetic u:La/a/a/b;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lcom/alipay/mobile/framework/AlipayApplication;

.field private f:Landroid/app/Activity;

.field private g:Lcom/alipay/mobile/core/ServiceManager;

.field private h:Lcom/alipay/mobile/core/ApplicationManager;

.field private i:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

.field private k:Lcom/alipay/mobile/core/init/BootLoader;

.field mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, La/a/b/b/b;

    const-string/jumbo v1, "MicroApplicationContextImpl.java"

    const-class v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-direct {v0, v1, v2}, La/a/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivity"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:java.lang.String"

    const-string/jumbo v5, "microApplication:className"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x10c

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivityForResult"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:java.lang.String:int"

    const-string/jumbo v5, "microApplication:className:requestCode"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivity"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:android.content.Intent"

    const-string/jumbo v5, "microApplication:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x14e

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startExtActivity"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:android.content.Intent"

    const-string/jumbo v5, "microApplication:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x15e

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivityForResult"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:android.content.Intent:int"

    const-string/jumbo v5, "microApplication:intent:requestCode"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x167

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->p:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startExtActivityForResult"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "com.alipay.mobile.framework.app.MicroApplication:android.content.Intent:int"

    const-string/jumbo v5, "microApplication:intent:requestCode"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x178

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->q:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startApp"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "java.lang.String:java.lang.String:android.os.Bundle"

    const-string/jumbo v5, "sourceAppId:targetAppId:params"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x1b0

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->r:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "doStartApp"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "java.lang.String:java.lang.String:android.os.Bundle"

    const-string/jumbo v5, "sourceAppId:targetAppId:params"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x1b9

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->s:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "finishApp"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "java.lang.String:java.lang.String:android.os.Bundle"

    const-string/jumbo v5, "sourceId:targetId:params"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x1c7

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->t:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "exit"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x1d8

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->u:La/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string/jumbo v1, "entry class must be set."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rm -r -f "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->execCommand(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "mExtras"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V
    .locals 6

    const/16 v5, 0xe

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->destroy()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    :try_start_0
    const-string/jumbo v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mMainThread"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mActivities"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.app.ActivityThread$ActivityClientRecord"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->clearState()V

    invoke-static {}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->unInitClient()V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    mul-int/2addr v0, v1

    const/high16 v1, 0x10

    div-int/2addr v0, v1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "activity.name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "activity.name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not finish."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Service can\'t start activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-static {v0, v1, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Service can\'t start activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    return-object v0
.end method

.method private static final synthetic b(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final synthetic c(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "current Activity must be ActivityInterface\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Toast(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "current Activity must be ActivityInterface\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachContext(Lcom/alipay/mobile/framework/AlipayApplication;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attachContext("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerActivityLifecycleCallbacks("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->createInstance()V

    new-instance v0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    new-instance v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->load()V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "@@"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->restoreState()V

    :cond_1
    return-void
.end method

.method public clearState()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "current Activity must be ActivityInterface\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->s:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "command="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exit()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->u:La/a/a/b;

    invoke-static {v0, p0, p0}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v0}, La/a/a/a;->d()La/a/a/e;

    move-result-object v2

    invoke-interface {v2}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    return-object v0
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->t:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getGwUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    return-object v0
.end method

.method public getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized hasInited()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/init/BootLoader;->loadBundle(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
    .locals 2

    instance-of v0, p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    check-cast p1, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "microContent must be MicroApplication or MicroService."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->restoreState(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ServiceManager;->restoreState(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public saveState()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "@@"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->saveState(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ServiceManager;->saveState(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "current Activity must be ActivityInterface\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "current Activity must be ActivityInterface\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->n:La/a/a/b;

    invoke-static {v0, p0, p0, p1, p2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v0}, La/a/a/a;->d()La/a/a/e;

    move-result-object v2

    invoke-interface {v2}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:La/a/a/b;

    invoke-static {v0, p0, p0, p1, p2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v0}, La/a/a/a;->d()La/a/a/e;

    move-result-object v2

    invoke-interface {v2}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->p:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    invoke-static {p3}, La/a/b/a/b;->a(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    invoke-static {p3}, La/a/b/a/b;->a(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->r:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:La/a/a/b;

    invoke-static {v0, p0, p0, p1, p2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v0}, La/a/a/a;->d()La/a/a/e;

    move-result-object v2

    invoke-interface {v2}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->q:La/a/a/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    invoke-static {p3}, La/a/b/a/b;->a(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, p0, p0, v3}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v3

    invoke-interface {v3}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "method-execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p0, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Intent;I)V

    goto :goto_3

    :cond_6
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method

.method public updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;

    return-object v0
.end method
