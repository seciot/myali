.class public abstract Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;


# static fields
.field private static final synthetic b:La/a/a/b;

.field private static final synthetic c:La/a/a/b;

.field private static final synthetic d:La/a/a/b;

.field private static final synthetic e:La/a/a/b;

.field private static final synthetic f:La/a/a/b;

.field private static final synthetic g:La/a/a/b;

.field private static final synthetic h:La/a/a/b;

.field private static final synthetic i:La/a/a/b;

.field private static final synthetic j:La/a/a/b;

.field private static final synthetic k:La/a/a/b;

.field private static final synthetic l:La/a/a/b;

.field private static final synthetic m:La/a/a/b;

.field private static final synthetic n:La/a/a/b;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, La/a/b/b/b;

    const-string/jumbo v1, "BaseFragmentActivity.java"

    const-class v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v0, v1, v2}, La/a/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onCreate"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.os.Bundle"

    const-string/jumbo v5, "savedInstanceState"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onResume"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->c:La/a/a/b;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivityForResult"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.content.Intent:int"

    const-string/jumbo v5, "intent:requestCode"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0xb2

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->l:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivity"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->m:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startActivityForResult"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.content.Intent:int"

    const-string/jumbo v5, "intent:requestCode"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->n:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onPause"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->d:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onNewIntent"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x51

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->e:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onUserLeaveHint"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->f:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onWindowFocusChanged"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "boolean"

    const-string/jumbo v5, "hasFocus"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->g:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onSaveInstanceState"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, "android.os.Bundle"

    const-string/jumbo v5, "outState"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->h:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onStart"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->i:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onDestroy"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->j:La/a/a/b;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "finish"

    const-string/jumbo v3, "com.alipay.mobile.framework.app.ui.BaseFragmentActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->k:La/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 5

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    :cond_0
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;I)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static final synthetic a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "M040"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private static final synthetic b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    :cond_0
    return-void
.end method

.method private static final synthetic b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, -0x1

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->l:La/a/a/b;

    invoke-static {v12}, La/a/b/a/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, p1, v2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-virtual {p0, p1, v12}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

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
    invoke-virtual {p0, p1, v12}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

.method private static final synthetic b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method private static final synthetic c(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserLeaveHint()V

    return-void
.end method

.method private static final synthetic d(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    :cond_0
    return-void
.end method

.method private static final synthetic e(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    :cond_0
    return-void
.end method

.method private static final synthetic f(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dismissProgressDialog()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dispatchOnTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->k:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->f(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->f(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b:La/a/a/b;

    invoke-static {v0, p0, p0, p1}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V

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

.method protected onDestroy()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->j:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->e(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->e(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->e:La/a/a/b;

    invoke-static {v0, p0, p0, p1}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V

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

.method protected onPause()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->d:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method protected onResume()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->c:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->h:La/a/a/b;

    invoke-static {v0, p0, p0, p1}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Bundle;)V

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

.method protected onStart()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->i:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->d(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->d(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method protected onUserLeaveHint()V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->f:La/a/a/b;

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->c(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->c(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

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

.method public onWindowFocusChanged(Z)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->g:La/a/a/b;

    invoke-static {p1}, La/a/b/a/b;->a(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Z)V

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Z)V

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

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->m:La/a/a/b;

    invoke-static {v0, p0, p0, p1}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V

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
    invoke-static {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;)V

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

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 12

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->n:La/a/a/b;

    invoke-static {p2}, La/a/b/a/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, p1, v2}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a;

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
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;I)V

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
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/content/Intent;I)V

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

.method public toast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->toast(Ljava/lang/String;I)V

    return-void
.end method
