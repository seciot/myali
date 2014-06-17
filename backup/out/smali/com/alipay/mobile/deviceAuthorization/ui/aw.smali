.class final Lcom/alipay/mobile/deviceAuthorization/ui/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "PAYMENTPASSWORD"

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    iget-object v4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    iget-boolean v4, v4, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->needMobileSp:Z

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aw;->b:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "MOBILEPASSWORD"

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method
