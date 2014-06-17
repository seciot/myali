.class public Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 19

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "manage"

    const-string/jumbo v2, "launchType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "authorizeLogs"

    const-string/jumbo v2, "launchType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "loginLogs"

    const-string/jumbo v2, "launchType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "loginLogsWelcome"

    const-string/jumbo v2, "launchType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "bizData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bizDataJson:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v2, "aPage"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "aId"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "aType"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "targetId"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "targetType"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "partnerId"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "resultCode"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "message"

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_a

    :cond_5
    const-string/jumbo v11, "launchType"

    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v16, "authorize"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string/jumbo v4, "003"

    const-string/jumbo v2, "P"

    const-string/jumbo v3, "authId"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v14

    move-object v11, v4

    move-object v4, v15

    move-object/from16 v17, v12

    move-object v12, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v13

    move-object v13, v2

    move-object/from16 v2, v18

    :goto_1
    if-nez v13, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "page\u4e0d\u80fd\u4e3a\u7a7a:page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v16, "authorizeLogin"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string/jumbo v4, "001"

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "securityId"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v14

    move-object v11, v4

    move-object v4, v15

    move-object/from16 v17, v12

    move-object v12, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v13

    move-object v13, v2

    move-object/from16 v2, v18

    goto :goto_1

    :cond_7
    const-string/jumbo v16, "authorizePassword"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const-string/jumbo v4, "002"

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "securityId"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v14

    move-object v11, v4

    move-object v4, v15

    move-object/from16 v17, v12

    move-object v12, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v13

    move-object v13, v2

    move-object/from16 v2, v18

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "manage"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "errPage"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v2, "E"

    :cond_a
    move-object v1, v12

    move-object v11, v4

    move-object v4, v15

    move-object v12, v3

    move-object v3, v14

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v1, "aPage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "aId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "aType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "bizType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "actionType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "tradeNO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "gmtCreate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v14, "P"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "targetType"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "partnerId"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "T"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "E"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "resultCode"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "U"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;B)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "actionType"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "bizType"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "tradeNO"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "gmtCreate"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000055"

    const-string/jumbo v3, "20000003"

    invoke-interface {v1, v2, v3, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;Lcom/alipay/mobile/framework/service/ext/security/DeviceService;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-object p1
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
