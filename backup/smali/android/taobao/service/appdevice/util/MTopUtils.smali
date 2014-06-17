.class public Landroid/taobao/service/appdevice/util/MTopUtils;
.super Ljava/lang/Object;


# static fields
.field public static final MTOP_ADVANCE_URL:Ljava/lang/String; = "http://api.wapa.taobao.com/rest/api3.do"

.field public static final MTOP_TEST_URL:Ljava/lang/String; = "http://api.waptest.taobao.com/rest/api3.do"

.field public static final MTOP_URL:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do"

.field public static final TYPE_ADVANCE:Ljava/lang/String; = "2"

.field public static final TYPE_NORMAL:Ljava/lang/String; = "0"

.field public static final TYPE_TEST:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMTopUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "MTOP_URL_TYPE_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "MTOP_URL_TYPE"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://api.waptest.taobao.com/rest/api3.do"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://api.wapa.taobao.com/rest/api3.do"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://api.m.taobao.com/rest/api3.do"

    goto :goto_0
.end method

.method public static setMTopUrlType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "MTOP_URL_TYPE_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "MTOP_URL_TYPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
