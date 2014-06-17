.class final Lcom/alipay/mobile/alipassapp/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/t;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/t;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/t;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/t;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->finish()V

    return-void
.end method
