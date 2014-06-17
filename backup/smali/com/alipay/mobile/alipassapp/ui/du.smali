.class final Lcom/alipay/mobile/alipassapp/ui/du;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wave"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "soundwave"

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-class v3, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "passId"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/du;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->w(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
