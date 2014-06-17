.class final Lcom/alipay/mobile/alipassapp/ui/cy;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cy;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cy;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cy;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cy;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassSchemeTransferActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
