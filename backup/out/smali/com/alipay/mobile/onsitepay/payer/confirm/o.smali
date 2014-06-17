.class final Lcom/alipay/mobile/onsitepay/payer/confirm/o;
.super Ljava/lang/Object;
.source "C2CConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/o;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
