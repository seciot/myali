.class final Lcom/alipay/mobile/alipassapp/ui/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ax;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ax;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ax;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
