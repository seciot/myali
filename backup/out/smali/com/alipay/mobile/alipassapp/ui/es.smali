.class final Lcom/alipay/mobile/alipassapp/ui/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/es;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/es;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/es;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/et;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/et;-><init>(Lcom/alipay/mobile/alipassapp/ui/es;)V

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_open_membercard_error_msg:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    :cond_0
    return-void
.end method
