.class final Lcom/alipay/mobile/onsitepay/utils/c;
.super Ljava/lang/Object;
.source "ShareSavePicThireBtnActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/c;->a:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/c;->a:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->d(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/c;->a:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->d(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->dismiss()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/c;->a:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->finish()V

    .line 239
    return-void
.end method
