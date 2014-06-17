.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;
.super Ljava/lang/Object;
.source "AllAppInfoDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppEntities()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000032"

    const-string/jumbo v3, "\u652f\u4ed8\u5b9d\u6253\u9020\u7684\u4f59\u989d\u7406\u8d22\u670d\u52a1\u3002\u901a\u8fc7\u4f59\u989d\u5b9d,\u7528\u6237\u4e0d\u4ec5\u80fd\u591f\u5f97\u5230\u6536\u76ca,\u8fd8\u80fd\u968f\u65f6\u6d88\u8d39\u652f\u4ed8\u548c\u8f6c\u51fa,\u50cf\u4f7f\u7528\u652f\u4ed8\u5b9d\u4f59\u989d\u4e00\u6837\u65b9\u4fbf\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_fund"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u4f59\u989d\u5b9d"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 29
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999988"

    const-string/jumbo v3, "\u968f\u65f6\u968f\u5730\uff0c\u514d\u8d39\u8f6c\u8d26\u6c47\u6b3e\uff0c\u6700\u9ad8\u6bcf\u5929\u8f6c\u8d265\u4e07\uff1a\n\u8f6c\u8d26\u5230\u652f\u4ed8\u5b9d\u8d26\u6237\uff0c\u77ac\u95f4\u5230\u8d26\uff1b\n\u8de8\u884c\u8f6c\u8d26\u5230\u94f6\u884c\u5361\u8d26\u6237\uff0c\u6700\u5feb\u5341\u5206\u949f\u5230\u8d26\uff1b\n\u4e0d\u77e5\u9053\u5bf9\u65b9\u8d26\u6237\uff0c\u4ea6\u80fd\u901a\u8fc7\u624b\u673a\u53f7\u4fbf\u6377\u8f6c\u8d26\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_transfer"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u8f6c\u8d26"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/16 v1, 0x1ea

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 35
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999999"

    const-string/jumbo v3, "\u652f\u6301\u6240\u6709\u4e3b\u6d41\u94f6\u884c\u4fe1\u7528\u5361\u8fd8\u6b3e\uff0c\u5f53\u5929\u5230\u5e10\u3001 0\u670d\u52a1\u8d39\uff1b\n\u8fd8\u53ef\u4ee5\u8bbe\u7f6e\u8fd8\u6b3e\u63d0\u9192\uff0c\u8fd8\u6b3e\u66f4\u8f7b\u677e\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_creditcard"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u4fe1\u7528\u5361\u8fd8\u6b3e"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 40
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000066"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_aapay"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "AA\u6536\u6b3e"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v1, 0x1d6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 45
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000123"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_payee"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u6536\u6b3e"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v1, 0x1d6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 50
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000014"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_facepay"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u5f53\u9762\u4ed8"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v1, 0x1cc

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 55
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999976"

    const-string/jumbo v3, "\u6c34\u7535\u7164\u7f34\u8d39\u662f\u4e00\u9879\u514d\u8d39\u7f34\u7eb3\u6c34\u3001\u7535\u3001\u71c3\u6c14\u8d39\u7684\u5e94\u7528\uff08\u5546\u6237\u4ee3\u7f34\u9664\u5916\uff09\uff0c\u540c\u65f6\u63d0\u4f9b\u514d\u8d39\u7684\u8d26\u5355\u8ba2\u9605\u3001\u7f34\u8d39\u63d0\u9192\u3001\u7ed1\u5b9a\u4ee3\u6263\u7b49\u589e\u503c\u670d\u52a1\u3002\u8ba9\u60a8\u4ece\u6b64\u8db3\u4e0d\u51fa\u6237\uff0c\u4eab\u53d7\u4e00\u7ad9\u5f0f\u7f34\u8d39\u670d\u52a1\uff01"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_publicfee"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u6c34\u7535\u7164"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v1, 0x1c2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 60
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000003"

    const-string/jumbo v3, "\u624b\u673a\u8bdd\u8d39\u5b9e\u65f6\u5145\u503c\uff0c\u6700\u4f4e98\u6298\uff0c\u79fb\u52a8\u3001\u8054\u901a\u3001\u7535\u4fe1\uff0c\u4e0d\u7ba1\u4f60\u5728\u54ea\u91cc\uff0c\u4e0d\u7ba1\u4f60\u8981\u5145\u591a\u5c11\uff0c\u90fd\u53ef\u4ee5\u968f\u65f6\u968f\u5730\u4e3a\u81ea\u5df1\u548c\u670b\u53cb\u7684\u624b\u673a\u5145\u503c\uff0c\u8bdd\u8d39\u5feb\u901f\u5230\u5e10\uff0c\u8ba9\u4f60\u7684\u624b\u673a\u6c38\u4e0d\u505c\u673a\uff01"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_phonecharge"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u624b\u673a\u5145\u503c"

    const/4 v9, 0x0

    const-string/jumbo v10, "\u8bdd\u8d39\u968f\u65f6\u5145\uff0c9.8\u6298\u8d77\u3002"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/16 v1, 0x1b8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 66
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999990"

    const-string/jumbo v3, "\u6dd8\u5b9d\u7f51\u6dd8\u5b9d\u5f69\u7968\u5b98\u65b9\u51fa\u54c1\uff0c\u670d\u52a1\u5e7f\u5927\u5f69\u6c11\u7684\u4e00\u6b3e\u5f69\u7968\u8d2d\u4e70\u3001\u5f00\u5956\u67e5\u8be2\u3001\u8ba2\u5355\u67e5\u8be2\u7684\u4e00\u7ad9\u5f0f\u5f69\u7968\u5ba2\u6237\u7aef\u3002\n\u7b80\u5355\uff1a\u6295\u6ce8\u7b80\u5355\u3001\u529f\u80fd\u5f3a\u5927\u3001\u73a9\u6cd5\u4e30\u5bcc\uff1b\n\u5b89\u5168\uff1a\u6dd8\u5b9d\u8d26\u53f7\u767b\u5f55\u3001\u652f\u4ed8\u5b9d\u62c5\u4fdd\u4ed8\u6b3e\uff1b\n\u4fbf\u6377\uff1a\u8ddf\u4e3b\u7ad9\u4e92\u901a\uff0c\u6dd8\u5b9d\u5f69\u7968\u8ba2\u5355\u67e5\u8be2\u4fbf\u6377\uff1b"

    const/4 v4, 0x1

    const-string/jumbo v5, "09999990.amr"

    const-string/jumbo v6, "app_lottery"

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u5f69\u7968"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "3.7.1.4"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v1, 0x1ae

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 72
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000094"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_plane"

    const-string/jumbo v7, "expApp"

    const-string/jumbo v8, "\u673a\u7968"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 78
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000074"

    const-string/jumbo v3, "\u6253\u8f66\u670d\u52a1"

    const/4 v4, 0x1

    const-string/jumbo v5, "20000074.amr"

    const-string/jumbo v6, "app_taxi"

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u5feb\u7684\u6253\u8f66"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v1, 0x19a

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 83
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "2013082800000932"

    const-string/jumbo v3, "\u968f\u65f6\u968f\u5730\u4e50\u4eab\u8d2d\u7269"

    const/4 v4, 0x1

    const-string/jumbo v5, "http://download.taobaocdn.com/freedom/15818/andriod/taobao_alipay.apk"

    const-string/jumbo v6, "app_taobao"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u6dd8\u5b9d"

    const/16 v9, 0x311e

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "2.1.1"

    const-string/jumbo v13, "com.taobao.taobao"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 88
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "2013062600000474"

    const-string/jumbo v3, "\u8db3\u4e0d\u51fa\u6237\u5c31\u80fd\u5b8c\u6210\u5145\u503c"

    const/4 v4, 0x1

    const-string/jumbo v5, "http://mobileapp.stable.alipay.net/downloadfunction/alipay.mobile/2013062600000474/1_0_0_9/1394270008943_campuscard-build-raw.jar"

    const-string/jumbo v6, "app_schoolecard"

    const-string/jumbo v7, "innerApp"

    const-string/jumbo v8, "\u6821\u56ed\u4e00\u5361\u901a"

    const/16 v9, 0x800

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.1"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 93
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000006"

    const-string/jumbo v3, "\u5361\u79cd\u9f50\u5168\uff0c\u8fc5\u901f\u5230\u8d26"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_game"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u6e38\u620f\u70b9\u5361"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v1, 0x17c

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 98
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "11000002"

    const-string/jumbo v3, "\u58f9\u57fa\u91d1\u6350\u6b3e\u662f \u6df1\u5733\u58f9\u57fa\u91d1\u516c\u76ca\u57fa\u91d1\u4f1a \u5021\u5bfc\u7684\u201c\u6bcf\u4eba\u6bcf\u59291\u70b9\u7231\u201d\u516c\u76ca\u4e92\u52a8\u6a21\u5f0f\uff0c\u5373\u201c\u6bcf\u4eba\u6bcf\u59291\u5143\u94b1\uff0c\u6210\u5c31\u7231\u7684365\u5929\u201d\u3002\n\u5584\u6b3e\u7528\u4e8e\u652f\u6301\u58f9\u57fa\u91d1\u6267\u884c\u7684\u707e\u5bb3\u6551\u52a9\u3001\u513f\u7ae5\u5173\u6000\u548c\u516c\u76ca\u4eba\u624d\u57f9\u517b\u4e09\u5927\u9886\u57df\u7684\u516c\u76ca\u9879\u76ee\u3002\u60a8\u53ef\u4ee5\u81ea\u884c\u51b3\u5b9a\u6bcf\u4e2a\u6708\u5b9a\u671f\u6350\u6b3e\u7684\u91d1\u989d\uff0c\u4e5f\u53ef\u4ee5\u968f\u65f6\u505c\u6b62\u4ed8\u6b3e\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, "11000002.amr"

    const-string/jumbo v6, "app_onefund"

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u58f9\u57fa\u91d1\u6708\u6350"

    const/16 v9, 0x64

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.1.1.1"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v1, 0x172

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 103
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000046"

    const-string/jumbo v3, "\u67e5\u8be2\u5e76\u8ddf\u8e2a\u5feb\u9012\uff0c\u5feb\u9012\u72b6\u6001\u901a\u77e5\uff1b\u652f\u6301\u626b\u63cf\u5355\u53f7\u67e5\u8be2\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_logistic"

    const-string/jumbo v7, "innerApp"

    const-string/jumbo v8, "\u6211\u7684\u5feb\u9012"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.20140324"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 108
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000004"

    const-string/jumbo v3, "Q\u5e01\u5145\u503c\uff0c\u5feb\u901f\u5b89\u5168"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_qq"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "Q\u5e01\u5145\u503c"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 113
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000008"

    const-string/jumbo v3, "\u6bcf30\u79d2\u66f4\u6362\u4e00\u6b21\u52a8\u6001\u53e3\u4ee4,\u66f4\u597d\u7684\u4fdd\u62a4\u60a8\u7684\u8d26\u6237\u8d44\u91d1\u5b89\u5168\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_mobileopt"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u624b\u673a\u5b9d\u4ee4"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/16 v1, 0x154

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 118
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "30000001"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_loan"

    const-string/jumbo v7, "androidApp"

    const-string/jumbo v8, "\u5c0f\u5fae\u8d37"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v1, 0x14a

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 123
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000009"

    const-string/jumbo v3, "\u516c\u5f00\u900f\u660e\u7684\u7f51\u7edc\u6350\u8d60\u5e73\u53f0"

    const/4 v4, 0x1

    const-string/jumbo v5, "10000009.amr"

    const-string/jumbo v6, "app_donate"

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u7231\u5fc3\u6350\u8d60"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "3.4.5.8"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 128
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000119"

    const-string/jumbo v3, "\u516c\u5f00\u900f\u660e\u7684\u7f51\u7edc\u6350\u8d60\u5e73\u53f0"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_aligame"

    const-string/jumbo v7, "H5App"

    const-string/jumbo v8, "\u963f\u91cc\u6e38\u620f"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "3.0.4.7"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 133
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000114"

    const-string/jumbo v3, "\u7531\u652f\u4ed8\u5b9d\u53d1\u8d77\uff0c\u8054\u5408\u591a\u5bb6\u4ebf\u4e07\u7528\u6237\u91cf\u7ea7\u5e94\u7528\u76f8\u4e92\u63a8\u5e7f\u7684\u8fd0\u8425\u65b9\u6848"

    const/4 v4, 0x1

    const-string/jumbo v5, "http://download.alipay.com/mobilecsprod/alipay.mobile/10000114/1_0_2_2/1392705213045_10000114_1.0.2.2_online.amr"

    const-string/jumbo v6, "app_essential"

    const-string/jumbo v7, "expApp"

    const-string/jumbo v8, "\u88c5\u673a\u5fc5\u5907"

    const/4 v9, 0x0

    const-string/jumbo v10, "\u4e00\u4ebf\u4ff1\u4e50\u90e8-\u88c5\u673a\u5fc5\u5907"

    const-string/jumbo v11, "in"

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 138
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "2013122700002486"

    const-string/jumbo v3, "\u6dd8\u5b9d\u624b\u673a\u52a9\u624b\u662f\u6dd8\u5b9d\u5b98\u65b9\u63a8\u51fa\u7684\u624b\u673a\u8f6f\u4ef6\u5546\u5e97\uff0c\u4e3a\u60a8\u63d0\u4f9b\u4e30\u5bcc\u3001\u5b89\u5168\u3001\u4f18\u8d28\u7684\u5b89\u5353\u5e94\u7528\u53ca\u6e38\u620f\u8d44\u6e90\uff0c\u540c\u65f6\u4e5f\u62e5\u6709\u624b\u673a\u7f51\u8d2d\u5b89\u5168\u4fdd\u969c\u3001\u96f6\u6d41\u91cf\u5f53\u9762\u4f20\u7b49\u7279\u8272\u529f\u80fd\uff0c \u4e3a\u60a8\u63d0\u4f9b\u4e2a\u6027\u5316\u624b\u673a\u52a9\u624b\u670d\u52a1\u3002"

    const/4 v4, 0x1

    const-string/jumbo v5, "http://rj.m.taobao.com/wap/appmark/outSideDownLoad.htm?key=alipayappcenter"

    const-string/jumbo v6, "app_appcenter"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u6dd8\u5b9d\u624b\u673a\u52a9\u624b"

    const/16 v9, 0x1a6e

    const-string/jumbo v10, "\u6dd8\u5b9d\u5b98\u65b9\u51fa\u54c1\uff0c\u7701\u94b1\u7701\u65f6\u7701\u6d41\u91cf"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "3.0.1.0"

    const-string/jumbo v13, "com.taobao.appcenter"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v1, 0x122

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 144
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "10000007"

    const-string/jumbo v3, "\u6761\u7801\u3001\u4e8c\u7ef4\u7801\u626b\u63cf\uff0c\u540c\u65f6\u652f\u6301\u76f8\u518c\u4e2d\u7684\u4e8c\u7ef4\u7801"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_scan"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u626b\u7801"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999998"

    const-string/jumbo v3, "7*24\u5c0f\u65f6\u670d\u52a1\uff0c\u65e0\u9700\u6392\u961f\uff0c\u514d\u624b\u7eed\u8d39"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, "app_broadband"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "\u56fa\u8bdd/\u5bbd\u5e26"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000041"

    const-string/jumbo v3, "\u8ba9\u4fe1\u7528\u7b49\u4e8e\u8d22\u5bcc\uff0c\u4e2d\u56fd\u8349\u6839\u7684\u6743\u5a01\u4fe1\u7528"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, "themis"

    const-string/jumbo v7, "nativeApp"

    const-string/jumbo v8, "TA\u7684\u4fe1\u7528"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x0

    const-string/jumbo v2, "2013073000000665"

    const-string/jumbo v3, "\u4f18\u60e0\u7684\u4ef7\u683c\uff0c\u5168\u9762\u7684\u5f71\u8baf\u4fe1\u606f\uff0c\u5b9e\u65f6\u7684\u573a\u6b21\u52a8\u6001\u3002\u652f\u6301\u5168\u56fd\u8fd1300\u5bb6\u7535\u5f71\u9662\u5728\u7ebf\u9009\u5750\uff0c\u514d\u9664\u6392\u961f\u7684\u89c2\u5f71\u70e6\u607c\uff0c\u66f4\u6709\u5404\u79cd\u7ed9\u529b\u7684\u8d85\u4f4e\u4f18\u60e0\u6d3b\u52a8\uff0c\u7701\u94b1\u7701\u5fc3\u770b\u7535\u5f71\uff01"

    const/4 v4, 0x0

    const-string/jumbo v5, "http://m.wangpiao.com/ActChannel/ClientFile/wangpiao_3.0.3.1_70.apk"

    const-string/jumbo v6, "wangpiaowang"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u7f51\u7968\u7f51"

    const/16 v9, 0x1405

    const-string/jumbo v10, "\u5728\u7ebf\u9009\u5ea7\u4e0d\u6392\u961f"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "3.0.3.1"

    const-string/jumbo v13, "com.wangpiao.ui"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x0

    const-string/jumbo v2, "2013081600000853"

    const-string/jumbo v3, "\u4f18\u9177-\u7535\u89c6\u5267\u7535\u5f71\u52a8\u6f2b\u97f3\u4e50\u65b0\u95fb\u5a31\u4e50\u9ad8\u6e05\u6d77\u91cf\u5f71\u89c6\u89c6\u9891\u5728\u7ebf\u89c2\u770b\u548c\u4e0b\u8f7d\uff0c\u5168\u65b0\u4f18\u9177\u89c6\u9891\u5a31\u4e50\u5ba2\u6237\u7aef\uff0c\u56fd\u5185\u9996\u4e2a\u4e3aAndroid\u5e73\u53f0\u8bbe\u8ba1\u7684\u89c6\u9891\u4ea7\u54c1\u3002\u5168\u65b0\u7248\u672c\u64ad\u653e\u66f4\u6d41\u7545\uff0c\u8d85\u6e05\u3001\u9ad8\u6e05\u97f3\u753b\u540c\u6b65\u987a\u7545\uff0c\u4e0b\u8f7d\u901f\u5ea6\u7ed9\u529b\u63d0\u5347."

    const/4 v4, 0x0

    const-string/jumbo v5, "http://dl.m.youku.com/android/phone/Youku_Android_zhifuqianbao.apk"

    const-string/jumbo v6, "youku"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u4f18\u9177"

    const/16 v9, 0x3205

    const-string/jumbo v10, "\u7535\u89c6\u5267\u7535\u5f71\u52a8\u6f2b\u97f3\u4e50\u65b0\u95fb\u5a31\u4e50\u89c6\u9891"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.0"

    const-string/jumbo v13, "com.youku.phone"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x0

    const-string/jumbo v2, "2013071100000550"

    const-string/jumbo v3, "\u8fd9\u662f\u4e00\u6b3e\u80fd\u771f\u6b63\u6539\u53d8\u4f60\u751f\u6d3b\u7684\u201c\u6253\u8f66\u795e\u5668\u201d\u3002\u8986\u76d6\u6700\u5e7f\uff01\u5df2\u5f00\u901a\u8d85\u8fc730\u4e2a\u57ce\u5e02\uff0c\u98ce\u9761\u5168\u56fd\uff1b\u8f66\u8f86\u6700\u591a\uff01\u5168\u56fd\u4e94\u5341\u4e07\u8f86\u6b63\u89c4\u51fa\u79df\u8f66\uff0c\u968f\u53eb\u968f\u5230\uff1b\u6253\u8f66\u6700\u6613\uff01\u4e5d\u6210\u6210\u529f\u7387\uff0c\u767e\u53d1\u767e\u4e2d\u3002"

    const/4 v4, 0x0

    const-string/jumbo v5, "http://www.kuaidadi.com/resources/apk/kuaididache_2.0.apk"

    const-string/jumbo v6, "app_kuaidi"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u5feb\u7684\u6253\u8f66"

    const/4 v9, 0x0

    const-string/jumbo v10, "\u5feb\u7684\u6253\u8f66\uff0c\u652f\u4ed8\u5b9d\u4e00\u7ad9\u5f0f\u670d\u52a1\u3002"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "2.0.0.0"

    const-string/jumbo v13, "com.funcity.taxi.passenger"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x0

    const-string/jumbo v2, "2013112800002214"

    const-string/jumbo v3, "\u6765\u5f80\u662f\u4e00\u6b3e\u8de8\u5e73\u53f0\u7684\u5373\u65f6\u901a\u8baf\u5de5\u5177,\u53ef\u4ee5\u8fdb\u884c\u514d\u8d39\u7684\u8bed\u97f3,\u77ed\u4fe1\u804a\u5929,\u63d0\u4f9b\u9605\u540e\u5373\u711a,\u624b\u5199\u6d82\u9e26,\u624e\u5806,\u6709\u58f0\u52a8\u6001\u8868\u60c5\u7b49\u597d\u73a9\u6709\u8da3\u7684\u529f\u80fd,\u5e2e\u52a9\u6211\u4eec\u8ba4\u8bc6\u6709\u540c\u6837\u5174\u8da3\u7684\u964c\u751f\u4eba,\u5efa\u7acb\u4eba\u8109,\u662f\u73b0\u5728\u6700\u6d41\u884c\u7684\u793e\u4ea4\u8f6f\u4ef6\u3002"

    const/4 v4, 0x0

    const-string/jumbo v5, "http://download.laiwang.alicdn.com/app/laiwang_4.2.0.apk"

    const-string/jumbo v6, "laiwang"

    const-string/jumbo v7, "independantApp"

    const-string/jumbo v8, "\u6765\u5f80"

    const/16 v9, 0x7600

    const-string/jumbo v10, "\u670b\u53cb\u5c31\u662f\u8981\u6765\u5f80"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "4.2.0.0"

    const-string/jumbo v13, "com.alibaba.android.babylon"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "09999970"

    const-string/jumbo v3, "\u542f\u52a8\u9875\u63a8\u9001"

    const/4 v4, 0x0

    const-string/jumbo v5, "09999970.amr"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u542f\u52a8\u9875\u63a8\u9001"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.0.3"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000007"

    const-string/jumbo v3, "\u624b\u673a\u5b89\u5168\u4e2d\u5fc3"

    const/4 v4, 0x0

    const-string/jumbo v5, "20000007.amr"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u624b\u673a\u5b89\u5168\u4e2d\u5fc3"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "2.0.0.0"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "80000001"

    const-string/jumbo v3, "\u5361\u5238"

    const/4 v4, 0x0

    const-string/jumbo v5, "80000001.amr"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "webApp"

    const-string/jumbo v8, "\u5361\u5238"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.4.2.5"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    const-string/jumbo v2, "20000121"

    const-string/jumbo v3, "\u9644\u8fd1"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "H5App"

    const-string/jumbo v8, "\u9644\u8fd1"

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1.0.5.1"

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\",\"backBehavior\":\"back\"}}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v14

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMyAppEntities()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000032"

    const-wide/16 v3, 0x1f4

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 207
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "09999988"

    const-wide/16 v3, 0x1ea

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "09999999"

    const-wide/16 v3, 0x1e0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000014"

    const-wide/16 v3, 0x1d6

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000123"

    const-wide/16 v3, 0x1d1

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "09999976"

    const-wide/16 v3, 0x1cc

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000003"

    const-wide/16 v3, 0x1c2

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "09999990"

    const-wide/16 v3, 0x1b8

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000009"

    const-wide/16 v3, 0x1ae

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000094"

    const-wide/16 v3, 0x1a4

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "2013082800000932"

    const-wide/16 v3, 0x190

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000119"

    const-wide/16 v3, 0x189

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000074"

    const-wide/16 v3, 0x188

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000066"

    const-wide/16 v3, 0x187

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "2013062600000474"

    const-wide/16 v3, 0x186

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "20000046"

    const-wide/16 v3, 0x17c

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "11000002"

    const-wide/16 v3, 0x172

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000006"

    const-wide/16 v3, 0x15e

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000004"

    const-wide/16 v3, 0x154

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000008"

    const-wide/16 v3, 0x14a

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "2013122700002486"

    const-wide/16 v3, 0x136

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    const-string/jumbo v2, "10000114"

    const-wide/16 v3, 0x12c

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-object v0
.end method
