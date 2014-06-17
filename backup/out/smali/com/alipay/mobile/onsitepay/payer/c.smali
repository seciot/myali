.class final Lcom/alipay/mobile/onsitepay/payer/c;
.super Ljava/lang/Object;
.source "AutoPaySuccessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/c;->a:Lcom/alipay/mobile/onsitepay/payer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/c;->a:Lcom/alipay/mobile/onsitepay/payer/b;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->setVisibility(I)V

    .line 104
    return-void
.end method
