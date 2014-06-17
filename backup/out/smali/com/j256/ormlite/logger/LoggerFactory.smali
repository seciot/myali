.class public Lcom/j256/ormlite/logger/LoggerFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/logger/Logger;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;
    .locals 5

    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    :cond_0
    new-instance v0, Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v1, p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/j256/ormlite/logger/Logger;-><init>(Lcom/j256/ormlite/logger/Log;)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    goto :goto_1
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method
