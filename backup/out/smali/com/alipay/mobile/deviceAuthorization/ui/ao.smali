.class final Lcom/alipay/mobile/deviceAuthorization/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "PAYMENTPASSWORD"

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v3}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;Landroid/view/View;)V

    move-object v2, v0

    move-object v3, v1

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/deviceAuthorization/a/d;

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v6, Lcom/alipay/mobile/clientsecurity/R$id;->y:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/deviceAuthorization/a/d;->a(I)Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionKey:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "MOBILEPASSWORD"

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    invoke-static {v3}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;Landroid/view/View;)V

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->b:Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ao;->a:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    iget-boolean v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->needMobileSp:Z

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_3
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_0
.end method
