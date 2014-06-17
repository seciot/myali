.class final Lcom/alipay/mobile/alipassapp/ui/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->r(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-string/jumbo v1, "share"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "aid"

    const-string/jumbo v2, "20000062"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dt;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method
