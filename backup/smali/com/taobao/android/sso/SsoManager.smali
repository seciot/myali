.class public final Lcom/taobao/android/sso/SsoManager;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Lcom/taobao/android/sso/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x2

    sput v0, Lcom/taobao/android/sso/SsoManager;->b:I

    sput v0, Lcom/taobao/android/sso/SsoManager;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 11

    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_2

    const-string/jumbo v0, "authtoken"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_3

    const-string/jumbo v0, "authAccount"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accounts"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v9

    const-string/jumbo v1, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "token"

    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v8, v2

    :goto_2
    const/4 v2, 0x1

    if-le v8, v2, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string/jumbo v0, "authAccount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "accountType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_6

    :cond_1
    new-instance v0, Landroid/accounts/AuthenticatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "empty"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "authAccount"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v10, Lcom/taobao/android/sso/a;

    invoke-direct {v10}, Lcom/taobao/android/sso/a;-><init>()V

    invoke-static {p0, v10, v9}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z

    :try_start_0
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v8, 0x1

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    move v8, v2

    goto :goto_2

    :cond_5
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    throw v0

    :cond_6
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string/jumbo v1, "request"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v9

    const-string/jumbo v1, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "token"

    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-le v8, v11, :cond_0

    :goto_2
    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v10, Lcom/taobao/android/sso/a;

    invoke-direct {v10}, Lcom/taobao/android/sso/a;-><init>()V

    invoke-static {p0, v10, v9}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z

    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v11, :cond_2

    add-int/lit8 v1, v8, 0x1

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    move v8, v1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_2
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    throw v0

    :cond_3
    move-object v4, p3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "reveal-actual-name"

    invoke-static {p0, v2, v1, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "errorCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "errorMessage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo v0, "errorCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;

    const-string/jumbo v1, "errorMessage"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "errorMessage"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/accounts/AccountManagerFuture",
            "<TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0xf

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p0, v0, v8}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "peek"

    invoke-virtual {v3, v2, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v9

    const-string/jumbo v2, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "token"

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v7, v8

    :goto_1
    if-le v7, v11, :cond_1

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v10, Lcom/taobao/android/sso/a;

    invoke-direct {v10}, Lcom/taobao/android/sso/a;-><init>()V

    sget v1, Lcom/taobao/android/sso/SsoManager;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "SSO_REPORTPID_CONFIG"

    invoke-virtual {p0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/taobao/android/sso/SsoManager;->b:I

    :cond_2
    sget v1, Lcom/taobao/android/sso/SsoManager;->b:I

    if-eq v1, v11, :cond_3

    invoke-static {p0, v10, v9}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "authAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "peek-token"

    invoke-static {p0, v1, p2, v3}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "authtoken"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v11, :cond_5

    add-int/lit8 v2, v7, 0x1

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    move v7, v2

    goto :goto_1

    :cond_5
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "authAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "update-token"

    invoke-static {p0, v1, p2, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/taobao/android/sso/a;)V
    .locals 5

    const/4 v1, 0x1

    sget v0, Lcom/taobao/android/sso/SsoManager;->c:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/taobao/android/sso/SsoManager;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/taobao/android/sso/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v3, v2, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const-string/jumbo v3, "SSO_REPORTPID_CONFIG"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    const-string/jumbo v0, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x1

    sput v0, Lcom/taobao/android/sso/SsoManager;->c:I

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v0, v4, :cond_4

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_2
    :goto_3
    invoke-static {p0, p1}, Lcom/taobao/android/sso/SsoManager;->c(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    sput v0, Lcom/taobao/android/sso/SsoManager;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Landroid/content/ComponentName;

    const-class v0, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z
    .locals 4

    const/4 v0, 0x1

    sget v1, Lcom/taobao/android/sso/SsoManager;->c:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "SSO_REPORTPID_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/taobao/android/sso/SsoManager;->c:I

    :cond_0
    sget v1, Lcom/taobao/android/sso/SsoManager;->c:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/taobao/android/sso/SsoManager;->a:I

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->c(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.taobao.android.sso.Version"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/taobao/android/sso/SsoManager;->a:I

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "com.taobao.android.sso.Version is not defined in meta-data of authentication service.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v3, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v3, :cond_3

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/taobao/android/sso/SsoManager;->e:Z

    :cond_1
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->d(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {p0, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Z)V

    if-nez p2, :cond_4

    move v1, v2

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->f(Landroid/content/Context;)V

    sput-boolean v1, Lcom/taobao/android/sso/SsoManager;->e:Z

    goto :goto_1

    :cond_5
    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sput-boolean v1, Lcom/taobao/android/sso/SsoManager;->e:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/taobao/android/sso/SsoManager;->f:Lcom/taobao/android/sso/internal/b;

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Whitelist not set yet for account type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.accounts.AccountAuthenticator"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.taobao.android.sso.Version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    new-instance v0, Landroid/accounts/AuthenticatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The current account authenticator installed by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is incompatible with SSO authenticator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :try_start_1
    iget-object v4, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_a

    sget-object v5, Lcom/taobao/android/sso/SsoManager;->f:Lcom/taobao/android/sso/internal/b;

    invoke-virtual {v5, v4}, Lcom/taobao/android/sso/internal/b;->a([Landroid/content/pm/Signature;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_a
    new-instance v4, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;

    const-string/jumbo v5, "sso service verify whitelist failed"

    invoke-direct {v4, v5}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    move v0, v2

    :cond_c
    sget v3, Lcom/taobao/android/sso/SsoManager;->a:I

    if-ge v0, v3, :cond_10

    invoke-static {p0, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Z)V

    if-ne v0, v1, :cond_e

    :try_start_2
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->b(Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_2
    if-nez v0, :cond_d

    invoke-static {p0, v2}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Z)V

    :cond_d
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->f(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_e
    :try_start_3
    const-string/jumbo v0, "abdicate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v7, :cond_f

    invoke-static {p0, v2}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Z)V

    :cond_f
    throw v0

    :cond_10
    sget-boolean v0, Lcom/taobao/android/sso/SsoManager;->e:Z

    if-eqz v0, :cond_2

    invoke-static {p0, v2}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Z)V

    sput-boolean v2, Lcom/taobao/android/sso/SsoManager;->e:Z

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;[Landroid/content/pm/Signature;J)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/taobao/android/sso/SsoManager;->f:Lcom/taobao/android/sso/internal/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/taobao/android/sso/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/taobao/android/sso/internal/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/android/sso/SsoManager;->f:Lcom/taobao/android/sso/internal/b;

    :cond_0
    sget-object v1, Lcom/taobao/android/sso/SsoManager;->f:Lcom/taobao/android/sso/internal/b;

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/android/sso/internal/b;->a([Landroid/content/pm/Signature;J)Z

    move-result v1

    invoke-static {p0, v2, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-boolean v2, Lcom/taobao/android/sso/SsoManager;->e:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "whitelist-timestamp"

    invoke-static {p0, v1, v4, v4}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "signatures"

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "update-whitelist"

    invoke-static {p0, v1, v4, v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_6

    :cond_0
    const-string/jumbo v1, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v3, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v5, "dummy"

    invoke-static {p0, v1, v3, v5, v4}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    move v7, v8

    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "abdicate"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v1, :cond_1

    aget-object v1, v2, v0

    :cond_1
    move v9, v0

    move-object v0, v4

    :goto_1
    if-le v9, v8, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {p0, v1}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    :cond_3
    if-eqz v0, :cond_5

    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "upgrade exception"

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, ""

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0

    :cond_6
    move v7, v0

    move-object v1, v4

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/taobao/android/sso/a;)V
    .locals 5

    const/4 v1, 0x1

    sget v0, Lcom/taobao/android/sso/SsoManager;->b:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/taobao/android/sso/SsoManager;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/taobao/android/sso/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v3, v2, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const-string/jumbo v3, "SSO_REPORTPID_CONFIG"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    const-string/jumbo v0, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x1

    sput v0, Lcom/taobao/android/sso/SsoManager;->b:I

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v0, v4, :cond_4

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_2
    :goto_3
    invoke-static {p0, p1}, Lcom/taobao/android/sso/SsoManager;->c(Landroid/content/Context;Lcom/taobao/android/sso/a;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    sput v0, Lcom/taobao/android/sso/SsoManager;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private static b(Landroid/content/Context;Lcom/taobao/android/sso/a;I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->d(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-class v4, Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/android/sso/a;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x280

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Authentication service not found.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Landroid/content/Context;Lcom/taobao/android/sso/a;)V
    .locals 3

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->d(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-class v2, Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;
    .locals 6

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v3, v1

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/taobao/android/sso/SsoManager;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->c(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "account-authenticator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid xml"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Failed to parse /res/xml/authenticator.xml\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v2, "accountType"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sso/SsoManager;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/taobao/android/sso/SsoManager;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)V
    .locals 9

    const-wide/16 v2, 0x40

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-wide v7, v0

    move-wide v0, v2

    move-wide v2, v7

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->d(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/16 v5, 0x3e8

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    const-wide/16 v5, 0x2

    mul-long/2addr v0, v5

    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sub-long/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method
