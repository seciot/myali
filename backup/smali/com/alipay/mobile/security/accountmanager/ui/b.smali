.class final Lcom/alipay/mobile/security/accountmanager/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "click position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/accountmanager/b/a$a;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/b/a$a;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c:Lcom/alipay/mobile/security/accountmanager/b/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/b/a;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-object v14, v0

    const-string/jumbo v1, ""

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000027"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "accountManageView"

    const-string/jumbo v9, "seeAccount"

    const-string/jumbo v10, "-"

    const-string/jumbo v11, "u"

    const-string/jumbo v12, "c"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v1, v15

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-virtual {v1, v14}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5207\u6362\u8d26\u6237\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/b;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-static {v1, v14}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
