.class final Lcom/alipay/mobile/onsitepay/payer/a;
.super Ljava/lang/Object;
.source "AutoPaySuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/a;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/a;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->finish()V

    .line 73
    return-void
.end method
