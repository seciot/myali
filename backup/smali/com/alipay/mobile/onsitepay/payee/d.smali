.class final Lcom/alipay/mobile/onsitepay/payee/d;
.super Ljava/lang/Object;
.source "FacePayeeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/d;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/d;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const-class v2, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/d;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method
