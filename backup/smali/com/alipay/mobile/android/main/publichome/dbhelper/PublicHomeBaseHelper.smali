.class public Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "PublicHomeBaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "publicHome.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final NEW_FOLLOW_ACCOUNT_INFO_TABLE:Ljava/lang/String; = "followaccountinfomodel"

.field private static final OLD_FOLLOW_ACCOUNT_INFO_DATABASE:Ljava/lang/String; = "alipayclient.db"

.field private static final OLD_FOLLOW_ACCOUNT_INFO_TABLE:Ljava/lang/String; = "followaccountinfo"

.field private static final PUBLIC_HOME_DEDICATED_DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PublicHomeBaseHelper"


# instance fields
.field private followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFollowAccountTableStructureArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 53
    const-string/jumbo v0, "publicHome.db"

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    iput-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,msgNoteType,topOperateTime,localDelete,operateProperties"

    aput-object v2, v0, v1

    const-string/jumbo v1, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,topOperateTime,localDelete,operateProperties"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,localDelete,operateProperties"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,localDelete,operateProperties"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mFollowAccountTableStructureArray:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method private static copyOperationType(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    :try_start_0
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 464
    const/4 v2, 0x0

    .line 465
    if-eqz v1, :cond_2

    .line 466
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 469
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 471
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 472
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 474
    :cond_2
    if-eqz v2, :cond_0

    instance-of v1, v2, Lcom/alipay/publiccore/client/model/OperateProperties;

    if-eqz v1, :cond_0

    .line 475
    const-string/jumbo v3, "defaultOrder"

    move-object v0, v2

    check-cast v0, Lcom/alipay/publiccore/client/model/OperateProperties;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDefaultOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v3, "deleteType"

    move-object v0, v2

    check-cast v0, Lcom/alipay/publiccore/client/model/OperateProperties;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDeleteType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v1, "topType"

    check-cast v2, Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getTopType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    goto :goto_0

    .line 486
    :catch_1
    move-exception v1

    goto :goto_0

    .line 484
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static duplicateColumn(Landroid/database/Cursor;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 245
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 290
    :cond_1
    return v0

    .line 248
    :cond_2
    const/4 v0, 0x1

    .line 249
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 250
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 251
    const/4 v6, -0x1

    if-ne v6, v5, :cond_6

    .line 256
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 257
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 249
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_3
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    move-object v0, p3

    .line 263
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move v0, v1

    goto :goto_1

    .line 264
    :cond_4
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_5

    move-object v0, p3

    .line 265
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v1

    goto :goto_1

    .line 267
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7279\u6b8a\u7c7b\u578b\u7684\u9ed8\u8ba4\u503c\u4e0d\u88ab\u652f\u6301, type:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_1

    .line 272
    :cond_6
    const-string/jumbo v6, "operateProperties"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 273
    invoke-static {p0, p2, v5}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->copyOperationType(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    goto :goto_1

    .line 274
    :cond_7
    const-string/jumbo v6, "unReadMsgCount"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "forceTopOrder"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 276
    :cond_8
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 277
    :cond_9
    const-string/jumbo v6, "gmtFollowTime"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "latestMsgTime"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "topOperateTime"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 280
    :cond_a
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 281
    :cond_b
    const-string/jumbo v6, "top"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "localDelete"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "cancelDefaultTop"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 284
    :cond_c
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 286
    :cond_d
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getAlipayClientDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 294
    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alipayclient.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getApplicationVersionCode()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0d\u80fd\u627e\u5230\u5305\u540d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5bf9\u5e94\u7684\u5305\u4fe1\u606f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private tableExisted(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid parameters for tableExisted()  db:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tableName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_3

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 202
    const/4 v0, 0x1

    .line 204
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    return v0
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    if-ne p4, v1, :cond_8

    .line 342
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getAlipayClientDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_0

    .line 354
    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mFollowAccountTableStructureArray:[Ljava/lang/String;

    array-length v5, v3

    move v3, v0

    move-object v0, v2

    .line 355
    :goto_1
    if-ge v3, v5, :cond_2

    .line 357
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->mFollowAccountTableStructureArray:[Ljava/lang/String;

    aget-object v0, v6, v3

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "select "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from followaccountinfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 374
    :cond_2
    if-eqz v2, :cond_7

    .line 376
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 377
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 382
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 383
    const-string/jumbo v5, ""

    invoke-static {v2, v0, v3, v5}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->duplicateColumn(Landroid/database/Cursor;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Object;)Z

    .line 386
    const-string/jumbo v5, "top"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 387
    const-string/jumbo v5, "top"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 389
    :cond_3
    const-string/jumbo v5, "topOperateTime"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 390
    const-string/jumbo v5, "topOperateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    :cond_4
    const-string/jumbo v5, "msgNoteType"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 393
    const-string/jumbo v5, "msgNoteType"

    const-string/jumbo v6, "number"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_5
    :try_start_1
    const-string/jumbo v5, "latestMsg"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v6

    const-string/jumbo v7, "latestMsg"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v5, "latestMsgThridAccount"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v6

    const-string/jumbo v7, "latestMsgThridAccount"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v5, "gotoAppUri"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v6

    const-string/jumbo v7, "gotoAppUri"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 408
    :goto_3
    :try_start_2
    const-string/jumbo v5, "followaccountinfomodel"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 417
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 366
    :catch_1
    move-exception v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u8986\u76d6\u5b89\u88c5\uff0c\u7b2c"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u6b21\u5339\u914d\u516c\u4f17\u53f7\u8d26\u53f7\u8868\u7ea7\u7ed3\u6784\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    add-int/lit8 v3, v3, 0x1

    .line 370
    goto/16 :goto_1

    .line 428
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_7
    :try_start_3
    const-string/jumbo v0, "DROP TABLE IF EXISTS followaccountinfo"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 440
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_5
    move v0, v1

    .line 445
    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 158
    return-void
.end method

.method public createNewTable(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0, p1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e3aClass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u521b\u5efa\u65b0\u8868\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 169
    const-class v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v2, "PublicHomeBaseHelperSyncFlag"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v2, "PublicHomeBaseHelperSyncFlag"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getAlipayClientDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 87
    :try_start_0
    const-string/jumbo v0, "followaccountinfo"

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->tableExisted(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :goto_1
    :try_start_2
    const-string/jumbo v2, "followaccountinfomodel"

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->tableExisted(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    .line 105
    :goto_2
    :try_start_3
    const-class v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-static {p2, v2}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 112
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "newFollowerTblExisted:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " oldFollowerTblExisted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_0
    :goto_4
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 132
    :cond_1
    :try_start_5
    const-class v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 135
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_1

    .line 127
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z

    .line 178
    return-void
.end method
