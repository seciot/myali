.class public final Lcom/alipay/android/widget/security/service/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/b;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/service/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setLogonId(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isMobileBinded()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->getMobileBindNo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowBindPhone(Ljava/lang/Boolean;)V

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isCertified()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u8ba4\u8bc1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowCertified(Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isSetHeadPic()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u8bbe\u7f6e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowPortraitSet(Ljava/lang/Boolean;)V

    :goto_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isSetGesture()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u8bbe\u7f6e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowGestureSet(Ljava/lang/Boolean;)V

    :goto_4
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isSetDeviceAuthentication()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u8ba4\u8bc1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowTIDSet(Ljava/lang/Boolean;)V

    :goto_5
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenPush()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u5f00\u542f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowPushSet(Ljava/lang/Boolean;)V

    :goto_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedMobileOtp()Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->av:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u5f00\u901a"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowBaoling(Ljava/lang/Boolean;)V

    :goto_7
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isSetSecurityQA()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u8bbe\u7f6e"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedUKey()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u7533\u8bf7"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedDigitalCert()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u5b89\u88c5"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedDynamicPwd()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u8bbe\u7f6e"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isMobileBinded()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isCertified()Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bM:I

    invoke-virtual {v0, v3}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setShowWarnTxt(I)V

    :goto_8
    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setFirstBlock(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setSecondBlock(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setLevel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setScore(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setMemo(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u7ed1\u5b9a"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowBindPhone(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_6
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u8ba4\u8bc1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowCertified(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_7
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowPortraitSet(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    :cond_8
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowGestureSet(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    :cond_9
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u8ba4\u8bc1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowTIDSet(Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :cond_a
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u7acb\u5373\u5f00\u542f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowPushSet(Ljava/lang/Boolean;)V

    goto/16 :goto_6

    :cond_b
    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->av:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "\u7acb\u5373\u5f00\u901a"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setIsShowArrowBaoling(Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_c
    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bN:I

    invoke-virtual {v0, v3}, Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;->setShowWarnTxt(I)V

    goto/16 :goto_8
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/b;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addSecurityLevel(Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/b;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->deleteSecurityLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isCertified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setCertified(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setLevel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isMobileBinded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setMobileBinded(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedDigitalCert()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setOpenedDigitalCert(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedDynamicPwd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setOpenedDynamicPwd(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedMobileOtp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setOpenedMobileOtp(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isOpenedUKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setOpenedUKey(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setScore(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->isSetSecurityQA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setSetSecurityQA(Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
