.class final Lcom/alipay/mobile/alipassapp/ui/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-string/jumbo v1, "offerDetails"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "openWeb"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "openNative"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "openSchema"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dq;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    goto :goto_0
.end method
