.class public abstract Lcom/alipay/mobile/alipassnfcapp/ui/h;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_CANCEL:I = -0x2

.field public static final RESULT_NOCARE:I = -0x1

.field public static final RESULT_OK:I


# instance fields
.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mToast:Landroid/widget/Toast;

.field protected mView:Landroid/view/View;

.field protected params:Ljava/lang/Object;

.field protected requestCode:I

.field private rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->requestCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected varargs doInBackground(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/alipassnfcapp/ui/RootController;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    iput-object p2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->params:Ljava/lang/Object;

    return-void
.end method

.method public init(Lcom/alipay/mobile/alipassnfcapp/ui/RootController;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    iput-object p2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->params:Ljava/lang/Object;

    iput p3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->requestCode:I

    return-void
.end method

.method public init(Lcom/alipay/mobile/alipassnfcapp/ui/RootController;Ljava/lang/Object;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    iput-object p2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->params:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-void
.end method

.method public intentCallBack(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public navigateTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public navigateTo(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onControllerInit(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    return-void
.end method

.method protected onControllerResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onPreDoInbackgroud(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onProgressCancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected varargs onUIUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pop()Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->b()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public pop(I)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(I)Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public pop(IILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    iget v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->requestCode:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(IIILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public pop(ILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->rootController:Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    iget v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/h;->requestCode:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(IILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    return-object v0
.end method
