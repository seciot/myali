.class public Lcom/alipay/android/mini/window/MiniPayActivity;
.super Lcom/alipay/android/mini/window/BaseActivity;

# interfaces
.implements Lcom/alipay/android/mini/window/IFormShower;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/alipay/android/mini/window/OnResultReceived;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/window/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/widget/MiniProgressDialog;)Lcom/alipay/android/mini/widget/MiniProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/MiniPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->a()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/MiniProgressDialog;

    return-void
.end method

.method public final a(Lcom/alipay/android/mini/event/OnFormEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/alipay/android/mini/window/IUIForm;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p0, v0}, Lcom/alipay/android/mini/window/IUIForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, -0xa

    if-eq p2, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {p0, v3}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->b()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/mini/window/p;

    invoke-direct {v0, p0, p0, p1}, Lcom/alipay/android/mini/window/p;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V
    .locals 8

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/l;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/window/l;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/mini/window/q;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a([Lcom/alipay/android/mini/event/ActionType;)V
    .locals 5

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/event/OnFormEventListener;

    new-instance v4, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-direct {v4, v3}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-interface {v0, p0, v4}, Lcom/alipay/android/mini/event/OnFormEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/o;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/mini/window/o;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a_(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->finish()V

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/mini/window/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->e:Lcom/alipay/android/mini/window/OnResultReceived;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cardNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->e:Lcom/alipay/android/mini/window/OnResultReceived;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1}, Lcom/alipay/android/mini/window/OnResultReceived;->a()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alipay/android/mini/window/GuideWindow;->a()Lcom/alipay/android/mini/window/GuideWindow;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/mini/window/GuideWindow;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string/jumbo v1, " mini pay activity decorView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Lcom/alipay/android/app/R$layout;->d:I

    invoke-super {p0, v0}, Lcom/alipay/android/mini/window/BaseActivity;->setContentView(I)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/MiniPayActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniPayActivity;->a()V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->j:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v1, v0}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/event/OnFormEventListener;

    invoke-interface {v0, p0, v1}, Lcom/alipay/android/mini/event/OnFormEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onResume()V

    return-void
.end method
